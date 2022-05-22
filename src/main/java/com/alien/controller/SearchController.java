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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

        //編碼轉換
        name = java.net.URLEncoder.encode(name,"UTF-8");
        String url = "redirect:/search/"+name+"/rank/asc/0";

        return url;
    }

    @RequestMapping("/search/{name}/{orderBy}/{orderType}/{page}")
    public String searchByName(Model model, @PathVariable("name") String name, @PathVariable("orderBy") String orderBy, @PathVariable("orderType") String orderType,@PathVariable("page") int page) {

        String databaseOrderBy = null;

        //防sql注入，從網址獲得參數用if做一次判斷賦予值
        if (orderBy.equals("rank")) {
            databaseOrderBy = "sort_by_rank";
        } else if (orderBy.equals("price")) {
            databaseOrderBy = "price";
        } else if (orderBy.equals("sales")) {
            databaseOrderBy = "sales_volume";
        } else {
            return "redirect:/notFound";
        }

        //判斷升序降序
        if (orderType.equals("asc")) {
            orderType = "asc";
        } else if(orderType.equals("desc")) {
            orderType = "desc";
        } else {
            return "redirect:/notFound";
        }

        if (page < 0 || page >= 100) {
            return "redirect:/notFound";
        }

        //編碼轉換
        try {
            name = java.net.URLDecoder.decode(name,"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        Search search = new Search(name,databaseOrderBy,orderType,page*60);
        List<Product> products = searchService.queryProductBySearch(search);
        if (products.isEmpty()) {
            return "redirect:/notFound";
        }

        if (page >= 0 && page < 1) {
            model.addAttribute("pageCategory", "page==0");
        } else if (page >= 1 && page < 5)
            model.addAttribute("pageCategory", "page1~4");
        else {
            model.addAttribute("pageCategory", "page>=5");
        }

        if (products.size() >180) {
            products = products.subList(0,60);
            model.addAttribute("pageRemain", "3");
        } else if (products.size() <= 180 && products.size() > 120) {
            products = products.subList(0,60);
            model.addAttribute("pageRemain", "2");
        } else if (products.size() <= 120 && products.size() > 60) {
            products = products.subList(0,60);
            model.addAttribute("pageRemain", "1");
        } else {
            model.addAttribute("pageRemain", "0");
        }


        model.addAttribute("searchName", name);
        model.addAttribute("orderBy", orderBy);
        model.addAttribute("orderByType", orderType);
        model.addAttribute("products", products);
        return "search";
    }



    @RequestMapping("/category/{category}/{orderBy}/{orderType}/{page}")
    public String searchByCategory(Model model, @PathVariable("category") String category, @PathVariable("orderBy") String orderBy, @PathVariable("orderType") String orderType,@PathVariable("page") int page) {
        String databaseOrderBy = null;

        //防sql注入，從網址獲得參數用if做一次判斷賦予值
        if (orderBy.equals("rank")) {
            databaseOrderBy = "sort_by_rank";
        } else if (orderBy.equals("price")) {
            databaseOrderBy = "price";
        } else if (orderBy.equals("sales")) {
            databaseOrderBy = "sales_volume";
        } else {
            return "redirect:/notFound";
        }

        //判斷升序降序
        if (orderType.equals("asc")) {
            orderType = "asc";
        } else if(orderType.equals("desc")) {
            orderType = "desc";
        } else {
            return "redirect:/notFound";
        }

        if (page < 0 || page >= 100) {
            return "redirect:/notFound";
        }

        //page樣式判斷
        int objVolume = 60;
        Search search = new Search(null,category,databaseOrderBy,orderType,page*objVolume);
        List<Product> products = searchService.queryProductBySearch(search);
        if (products.isEmpty()) {
            return "redirect:/notFound";
        }

        if (page >= 0 && page < 1) {
            model.addAttribute("pageCategory", "page==0");
        } else if (page >= 1 && page < 5)
            model.addAttribute("pageCategory", "page1~4");
        else {
            model.addAttribute("pageCategory", "page>=5");
        }

        if (products.size() >objVolume*3) {
            products = products.subList(0,objVolume);
            model.addAttribute("pageRemain", "3");
        } else if (products.size() <= objVolume*3 && products.size() > objVolume*2) {
            products = products.subList(0,objVolume);
            model.addAttribute("pageRemain", "2");
        } else if (products.size() <= objVolume*2 && products.size() > objVolume) {
            products = products.subList(0,objVolume);
            model.addAttribute("pageRemain", "1");
        } else {
            model.addAttribute("pageRemain", "0");
        }
        model.addAttribute("category", category);
        model.addAttribute("orderBy", orderBy);
        model.addAttribute("orderByType", orderType);
        model.addAttribute("products", products);
        return "search";
    }
}
