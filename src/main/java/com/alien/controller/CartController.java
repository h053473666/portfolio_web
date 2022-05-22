package com.alien.controller;

import com.alien.pojo.Cart;
import com.alien.pojo.Product;
import com.alien.pojo.User;
import com.alien.service.*;
import com.alien.utils.AccountSession;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.time.Instant;
import java.util.ArrayList;
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

    @Autowired
    @Qualifier("UserServiceImpl")
    private UserService userService;

    @Autowired
    @Qualifier("ProductServiceImpl")
    private ProductService productService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/addCart")
    public String addCart(HttpServletRequest request, Cart cart) {
        if (accountSession.getAccount(request) == null) {
            return "redirect:/user/login";
        }

        if (cart.getItemId() == null) {
            return "redirect:/notFound";
        }

        String account = cart.getAccount();
        String itemId = cart.getItemId();
        int purchaseVolume = cart.getPurchaseVolume();


        List<Cart> carts = cartService.queryCartByItemId(account,itemId);

        if (carts.isEmpty()) {
            cartService.addCart(account, itemId, purchaseVolume);
        } else {
            cart = carts.get(0);
            cart.setPurchaseVolume(cart.getPurchaseVolume()+purchaseVolume);
            cartService.updateCartPurchaseVolume(cart);
        }

        int cartsSize = cartService.queryCartSize(account);
        accountSession.setCartSize(request,cartsSize);


        //隨機字母數字加時間戳
        String cartVerification = RandomStringUtils.randomAlphanumeric(5) + Long.toString(Instant.now().toEpochMilli());
        User user = new User(account, null, cartVerification);
        userService.updateCartVerification(user);

        request.getSession().setAttribute("successAddCart", "商品已加入購物車");

        return "redirect:/product/" + itemId;
    }

    @RequestMapping("/addPurchase")
    public String addPurchase(HttpServletRequest request, Cart cart) {
        if (accountSession.getAccount(request) == null) {
            return "redirect:/user/login";
        }

        if (cart.getItemId() == null) {
            return "redirect:/notFound";
        }

        String itemId = cart.getItemId();
        Product product = productService.queryProduct(itemId);
        int salesVolume = cart.getPurchaseVolume()+ product.getSalesVolume();

        productService.updateSalesVolume(itemId,salesVolume);
        cartService.addPurchase(cart.getAccount(), cart.getItemId(),cart.getPurchaseVolume());

        request.getSession().setAttribute("successAddProduct", "商品購買成功");

        return "redirect:/product/" + itemId;
    }

    @RequestMapping("")
    public String cart(Model model, HttpServletRequest request) {
        if (accountSession.getAccount(request) == null) {
            return "redirect:/user/login";
        }

        String account = accountSession.getAccount(request);
        List<Cart> carts = cartService.queryCart(account);
        model.addAttribute("carts" ,carts);

        String cartVerification = userService.queryCartVerification(account);
        model.addAttribute("cartVerification" ,cartVerification);

        String recommendCacheIndex = accountSession.getRecommendCacheIndex(request);

        //如果緩存頁面為空
        if (recommendCacheIndex==null) {
            account = accountSession.getAccount(request);
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
                    return "cart";
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
            return "cart";

        } else {
            //直接取追蹤緩存頁面的推薦
            Map<String, List<Product>> recommendCache = accountSession.getRecommendCache(request);
            recommendCache.get(recommendCacheIndex);
            List<Product> recommends = recommendCache.get(recommendCacheIndex);
            recommends = recommends.subList(0, 10);
            model.addAttribute("recommends", recommends);
            return "cart";
        }

    }

    @RequestMapping("addCartPurchase")
    public String addCartPurchase(HttpServletRequest request,int[] indexCarts, String cartVerification) {
        if (accountSession.getAccount(request) == null) {
            return "redirect:/user/login";
        }
        if (cartVerification == null) {
            return "redirect:/notFound";
        }


        String account = accountSession.getAccount(request);
        if (!cartVerification.equals(userService.queryCartVerification(account))) {
            request.getSession().setAttribute("cartError", "購物車頁面已過期 請重新點擊購物車");
            return "redirect:/";
        }

        List<Cart> carts = cartService.queryCart(account);
        List<Cart> cartsToPurchase = new ArrayList<>();
        List<String> itemIdList = new ArrayList<>();
        List<Product> products = new ArrayList<>();
        String itemId;
        int salesVolume;

        for (int indexCart : indexCarts) {
            cartsToPurchase.add(carts.get(indexCart));
            salesVolume = carts.get(indexCart).getSalesVolume()+carts.get(indexCart).getPurchaseVolume();
            itemId = carts.get(indexCart).getItemId();
            products.add(new Product(itemId,salesVolume));
        }
        cartService.addCartPurchase(cartsToPurchase);
        cartService.deleteCart(cartsToPurchase,account);

        productService.updateSalesVolumeByProductList(products);

        cartVerification = RandomStringUtils.randomAlphanumeric(5) + Long.toString(Instant.now().toEpochMilli());
        User user = new User(account, null, cartVerification);
        userService.updateCartVerification(user);

        int cartsSize = cartService.queryCartSize(account);
        accountSession.setCartSize(request,cartsSize);

        request.getSession().setAttribute("successAddCartProduct", "商品購買成功");
        return "redirect:/cart";
    }

    @RequestMapping("deleteCart/{itemId}/{cartVerification}")
    public String deleteCart(HttpServletRequest request,@PathVariable("cartVerification") String cartVerification,@PathVariable("itemId") String itemId) {
        if (accountSession.getAccount(request) == null) {
            return "redirect:/user/login";
        }
        Product product = productService.queryProduct(itemId);

        if (product == null) {
            return "redirect:/notFound";
        }

        String account = accountSession.getAccount(request);

        if (!cartVerification.equals(userService.queryCartVerification(account))) {
            request.getSession().setAttribute("cartError", "購物車頁面已過期 請重新點擊購物車");
            return "redirect:/";
        }

        cartService.deleteCartByItemId(account,itemId);

        cartVerification = RandomStringUtils.randomAlphanumeric(5) + Long.toString(Instant.now().toEpochMilli());
        User user = new User(account, null, cartVerification);
        userService.updateCartVerification(user);

        int cartsSize = cartService.queryCartSize(account);
        accountSession.setCartSize(request,cartsSize);

        return "redirect:/cart";
    }

}
