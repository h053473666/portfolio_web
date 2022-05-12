package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.pojo.Search;
import com.alien.service.SearchService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.UnsupportedEncodingException;
import java.util.List;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class SearchController {

    @Autowired
    @Qualifier("SearchServiceImpl")
    private SearchService searchService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/inputSearch")
    public String inputSearch(Search search) throws UnsupportedEncodingException {
        String name = search.getName();
        name = java.net.URLEncoder.encode(name,"UTF-8");
        System.out.println(name);
        String url = "redirect:/search/"+name+"/rank/asc/0";

        System.out.println(url);
        return url;
    }

    @RequestMapping("/search/{name}/{orderBy}/{orderType}/{page}")
    public String searchByName(Model model, @PathVariable("name") String name, @PathVariable("orderBy") String orderBy, @PathVariable("orderType") String orderType,@PathVariable("page") int page) {

        if (orderBy.equals("rank")) {
            orderBy = "sort_by_rank";
        } else if (orderBy.equals("price")) {
            orderBy = "price";
        } else if (orderBy.equals("sales")) {
            orderBy = "sales_volume";
        }

        if (orderType.equals("asc")) {
            orderType = "asc";
        } else if(orderType.equals("desc")) {
            orderType = "desc";
        }

        Search search = new Search(name,orderBy,orderType,page*60);
        List<Product> products = searchService.queryProductBySearch(search);
//        products = products.subList(0,60);
        model.addAttribute("products", products);
        return "search";
    }



    @RequestMapping("/category/{category}/{orderBy}/{orderType}/{page}")
    public String searchByCategory(Model model, @PathVariable("category") String category, @PathVariable("orderBy") String orderBy, @PathVariable("orderType") String orderType,@PathVariable("page") int page) {
        if (orderBy.equals("rank")) {
            orderBy = "sort_by_rank";
        } else if (orderBy.equals("price")) {
            orderBy = "price";
        } else if (orderBy.equals("sales")) {
            orderBy = "sales_volume";
        }

        if (orderType.equals("asc")) {
            orderType = "asc";
        } else if(orderType.equals("desc")) {
            orderType = "desc";
        }

        Search search = new Search(null,category,orderBy,orderType,page*60);
        List<Product> products = searchService.queryProductBySearch(search);
        products = products.subList(0,60);
        model.addAttribute("products", products);
        return "search";
    }
}
