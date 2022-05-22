package com.alien.controller;

import com.alien.pojo.Product;
import com.alien.service.ClickTrackingService;
import com.alien.service.ProductService;
import com.alien.service.RecommendService;
import com.alien.service.SimilarService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
public class ProductController {

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    @Autowired
    @Qualifier("SimilarServiceImpl")
    private SimilarService similarService;

    @Autowired
    @Qualifier("ClickTrackingServiceImpl")
    private ClickTrackingService clickTrackingService;

    @Autowired
    @Qualifier("RecommendServiceImpl")
    private RecommendService recommendService;

    private AccountSession accountSession = new AccountSession();

    @RequestMapping("/product/{itemId}")
    public String product(@PathVariable("itemId") String itemId, Model model,  HttpServletRequest request) {


        //沒這商品ID
        Product product = productService.queryProduct(itemId);
        if (product == null) {
            return "redirect:/notFound";
        }
        model.addAttribute(product);

        //點擊追蹤
        //判斷是否登入
        List<String> trackings = new ArrayList<String>();
        if (accountSession.haveAccountSession(request)) {
            //如果有登入，寫入sql
            String account = accountSession.getAccount(request);
            trackings = clickTrackingService.queryTracking(account);
            //如果追蹤裡有itemId移除再寫入
            if (trackings.contains(itemId)) {
                trackings.remove(itemId);
                trackings.add(itemId);
                clickTrackingService.deleteTracking(account,itemId);
                clickTrackingService.addTracking(account,itemId);
            } else {
                trackings.add(itemId);
                clickTrackingService.addTracking(account,itemId);
                //如果超過30個itemId移除最舊的
                if (trackings.size() > 30) {
                    clickTrackingService.deleteTracking(account,trackings.get(0));
                    trackings.remove(0);
                }
            }

        } else {
            //沒登入寫入session
            trackings = accountSession.getTracking(request);
            //
            if (trackings != null) {
                if (trackings.contains(itemId)) {
                    //如果追蹤裡有移除再寫入
                    accountSession.deleteTracking(request,itemId,trackings);
                    accountSession.addTracking(request,itemId,trackings);

                } else {
                    accountSession.addTracking(request,itemId,trackings);
                    //如果超過30個移除最舊的
                    if (trackings.size() > 30) {
                        accountSession.deleteTracking(request,0,trackings);
                    }
                }
            } else {
                //如果沒session，設一個session
                accountSession.setTracking(request);
                //增加一個追蹤
                trackings = accountSession.getTracking(request);
                accountSession.addTracking(request,itemId,trackings);
            }

        }

        //5個相似商品
        List<Product> similarProducts = similarService.querySimilar5(itemId);
        model.addAttribute("similarProducts", similarProducts);

        //5個推薦商品

        List<Product> recommends = recommendService.queryRecommend(trackings);

        String recommendCacheIndex = accountSession.getRecommendCacheIndex(request);

        //判斷是否有緩存頁面
        if (recommendCacheIndex == null) {
            accountSession.setRecommendCacheIndex(request, "0");
            accountSession.setRecommendCache(request);
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.put("0",recommends);
            accountSession.setRecommendCache(request, recommendCache);
        }  else if (recommendCacheIndex.equals("9")) {
            //只有0~9頁緩存
            accountSession.setRecommendCacheIndex(request, "0");
            recommendCacheIndex = "0";
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.put("0",recommends);
            accountSession.setRecommendCache(request, recommendCache);
        }  else {
            //訪問頁面存入新緩存頁面
            int recommendCacheIndexInt = Integer.parseInt(recommendCacheIndex);
            recommendCacheIndex = (recommendCacheIndexInt + 1) + "";
            accountSession.setRecommendCacheIndex(request, recommendCacheIndex);
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.put(recommendCacheIndex,recommends);
            accountSession.setRecommendCache(request, recommendCache);

        }
        model.addAttribute("recommendCacheIndex", recommendCacheIndex);

        recommends = recommends.subList(0,5);

        model.addAttribute("recommends", recommends);

        return "product";
    }


}
