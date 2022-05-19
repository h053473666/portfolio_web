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
public class SimilarController {

    @Autowired
    @Qualifier("SimilarServiceImpl")
    private SimilarService similarService;

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @RequestMapping("/similar/{itemId}/{page}")
    public String similar(@PathVariable("itemId") String itemId,@PathVariable("page") int page, Model model) {
        if (page > 2 || page<0) {
            return "redirect:/notFound";
        }

        String category = productService.queryProduct(itemId).getCategory();
        List<Product> similarProducts = similarService.querySimilar(itemId, page,category);

        if (similarProducts.isEmpty()) {
            return "redirect:/notFound";
        }

        model.addAttribute("similarProducts", similarProducts);
        model.addAttribute("page",page);
        model.addAttribute("itemId",itemId);

        return "similar";
    }


}
