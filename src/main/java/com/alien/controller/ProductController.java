package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.ProductService;
import com.alien.service.SimilarService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class ProductController {

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @Autowired
    @Qualifier("SimilarServiceImpl")
    private SimilarService similarService;

    @RequestMapping("/product/{itemId}")
    public String product(@PathVariable("itemId") String itemId, Model model) {


        //沒這商品ID 跳到404網頁
        Product product = productService.queryProduct(itemId);
        if (product == null) {
            return "redirect:/";
        }
        model.addAttribute(product);

        //點擊追蹤

        //是否登入

        //如果有登入，寫入sql

        //超過30個刪除一個追蹤

        //沒登入寫入session

        //超過30個刪除一個追蹤

        //5個相似商品
        List<Product> similarProducts = similarService.querySimilar5(itemId);
        model.addAttribute("similarProducts", similarProducts);

        //5個推薦商品



        return "product";
    }


}
