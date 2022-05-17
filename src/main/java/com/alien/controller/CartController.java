package com.alien.controller;

import com.alien.pojo.Cart;
import com.alien.pojo.Product;
import com.alien.service.CartService;
import com.alien.service.ClickTrackingService;
import com.alien.service.RecommendService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;


@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
@RequestMapping("/cart")
public class CartController {

    @Autowired
    @Qualifier("RecommendServiceImpl")
    private RecommendService recommendService;

    @Autowired
    @Qualifier("ClickTrackingServiceImpl")
    private ClickTrackingService clickTrackingService;

    @Autowired
    @Qualifier("CartServiceImpl")
    private CartService cartService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/addCart")
    public String addCart(HttpServletRequest request, Cart cart) {


        cartService.addCart(cart.getAccount(), cart.getItemId(),cart.getPurchaseVolume());
        String itemId = cart.getItemId();
        return "redirect:/product/" + itemId;
    }

    @RequestMapping("/addPurchase")
    public String addPurchase(HttpServletRequest request, Cart cart) {


        cartService.addPurchase(cart.getAccount(), cart.getItemId(),cart.getPurchaseVolume());
        String itemId = cart.getItemId();
        return "redirect:/product/" + itemId;
    }

    @RequestMapping("")
    public String cart(Model model, HttpServletRequest request) {
        String account = accountSession.getAccount(request);
        List<Cart> carts = cartService.queryCart(account);
        model.addAttribute("carts" ,carts);

        String recommendCacheIndex = accountSession.getRecommendCacheIndex(request);

        if (recommendCacheIndex==null) {
            account = accountSession.getAccount(request);
            if (account != null ) {
                List<String> trackings = clickTrackingService.queryTracking(account);
                if (!trackings.isEmpty()) {
                    accountSession.setRecommendCacheIndex(request, "0");
                    accountSession.setRecommendCache(request);
                    Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
                    List<Product> recommends = recommendService.queryRecommend(trackings);
                    recommendCache.put("0",recommends);
                    accountSession.setRecommendCache(request, recommendCache);
                    recommends = recommends.subList(0, 10);
                    model.addAttribute("recommends", recommends);
                    return "cart";
                }

            }
            accountSession.setRecommendCacheIndex(request, "0");
            accountSession.setRecommendCache(request);
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            List<Product> recommends = recommendService.queryRecommend(null);
            recommendCache.put("0",recommends);
            accountSession.setRecommendCache(request, recommendCache);
            recommends = recommends.subList(0, 10);
            model.addAttribute("recommends", recommends);
            return "cart";

        } else {
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.get(recommendCacheIndex);
            List<Product> recommends = recommendCache.get(recommendCacheIndex);
            recommends = recommends.subList(0, 10);
            model.addAttribute("recommends", recommends);
            return "cart";
        }

    }
    @RequestMapping("addCartPurchase")
    public String addCartPurchase(HttpServletRequest request,int[] indexCarts) {
//        List<Cart> carts = new ArrayList<>();
//        carts.add(cart);
        String account = accountSession.getAccount(request);
        List<Cart> carts = cartService.queryCart(account);
        List<Cart> cartsToPurchase = new ArrayList<>();
        for (int indexCart : indexCarts) {
            cartsToPurchase.add(carts.get(indexCart));
        }
        cartService.addCartPurchase(cartsToPurchase);
        cartService.deleteCart(cartsToPurchase,account);
        return "redirect:/cart";
    }

}
