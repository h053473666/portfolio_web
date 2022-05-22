package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.ClickTrackingService;
import com.alien.service.RecommendService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class NotFoundController {

    @Autowired
    @Qualifier("RecommendServiceImpl")
    private RecommendService recommendService;

    @Autowired
    @Qualifier("ClickTrackingServiceImpl")
    private ClickTrackingService clickTrackingService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/notFound")
    public String notFound(HttpServletRequest request, Model model) {
        String recommendCacheIndex = accountSession.getRecommendCacheIndex(request);

        //如果緩存頁面為空
        if (recommendCacheIndex==null) {
            String account = accountSession.getAccount(request);
            //如果有登入
            if (account != null ) {

                List<String> trackings = clickTrackingService.queryTracking(account);
                //如果追蹤不為空
                if (!trackings.isEmpty()) {
                    //設緩存頁面為0 把推薦寫入session
                    accountSession.setRecommendCacheIndex(request, "0");
                    accountSession.setRecommendCache(request);
                    Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);

                    //資料庫查詢追蹤
                    List<Product> recommends = recommendService.queryRecommend(trackings);
                    recommendCache.put("0",recommends);

                    //取10個商品
                    accountSession.setRecommendCache(request, recommendCache);
                    recommends = recommends.subList(0, 10);

                    model.addAttribute("recommends", recommends);

                    return "notFound";
                }

            }

            accountSession.setRecommendCacheIndex(request, "0");
            accountSession.setRecommendCache(request);
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            //追蹤為空
            List<Product> recommends = recommendService.queryRecommend(null);
            recommendCache.put("0",recommends);

            accountSession.setRecommendCache(request, recommendCache);

            recommends = recommends.subList(0, 10);
            model.addAttribute("recommends", recommends);

            return "notFound";

        } else {
            //直接取追蹤緩存頁面的推薦
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.get(recommendCacheIndex);
            List<Product> recommends = recommendCache.get(recommendCacheIndex);
            recommends = recommends.subList(0, 10);

            model.addAttribute("recommends", recommends);

            return "notFound";
        }


    }


}
