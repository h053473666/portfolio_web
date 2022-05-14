package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.RecommendService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class RecommendController {


    @Autowired
    @Qualifier("RecommendServiceImpl")
    private RecommendService recommendService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/recommend/{recommendCacheIndex}/{page}")
    public String recommend(HttpServletRequest request,@PathVariable("recommendCacheIndex") String recommendCacheIndex, @PathVariable("page") int page, Model model) {

        if (accountSession.getRecommendCacheIndex(request)==null) {

            accountSession.setRecommendCacheIndex(request, "0");
            accountSession.setRecommendCache(request);
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            List<Product> recommends = recommendService.queryRecommend(null);
            recommendCache.put("0",recommends);
            accountSession.setRecommendCache(request, recommendCache);
            recommends = recommends.subList(0, 60);
            model.addAttribute("recommends", recommends);
            model.addAttribute("page",page);
            return "redirect:/recommend/0/0";

        } else if (accountSession.getRecommendCache(request).get(recommendCacheIndex) == null) {
            return "redirect:/recommend/" + accountSession.getRecommendCacheIndex(request) + "/0";
        } else {
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.get(recommendCacheIndex);
            List<Product> recommends = recommendCache.get(recommendCacheIndex);
            recommends = recommends.subList(60*page, 60*(page+1));
            model.addAttribute("recommends", recommends);
            model.addAttribute("page",page);
            return "recommend";
        }

    }

}
