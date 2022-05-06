package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class ProductController {

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @RequestMapping("/product/{itemId}")
    public String product(@PathVariable("itemId") String itemId, Model model) {
        Product product = productService.queryProduct(itemId);
        if (product == null) {
            return "redirect:/";
        }
        model.addAttribute(product);
        return "product";
    }


}
