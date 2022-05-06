package com.alien.controller;

import com.alien.dao.SimilarMapper;
import com.alien.pojo.Product;
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

    @RequestMapping("/similar/{itemId}/{page}")
    public String similar(@PathVariable("itemId") String itemId,@PathVariable("page") int page, Model model) {
        List<Product> similarProducts = similarService.querySimilar(itemId);
        List<Product> category180 = similarService.queryCategory180(similarProducts.get(0).getCategory());
        int size = similarProducts.size();
        category180 = category180.subList(0, 180 - size);
        similarProducts.addAll(category180);
        similarProducts = similarProducts.subList(page*60, (page+1) * 60);
        model.addAttribute("similarProducts", similarProducts);
        return "similar";

    }


}
