package com.alien.controller;

import com.alien.pojo.Cart;
import com.alien.service.CartService;
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


@EnableAspectJAutoProxy(proxyTargetClass=true)
@Controller
@RequestMapping("/cart")
public class CartController {


    @Autowired
    @Qualifier("CartServiceImpl")
    private CartService cartService;

    AccountSession accountSession = new AccountSession();

    @RequestMapping("/addcart")
    public String addCart(HttpServletRequest request, Cart cart) {


        cartService.addCart(cart.getAccount(), cart.getItemId(),cart.getPurchaseVolume());
        String itemId = cart.getItemId();
        return "redirect:/product/" + itemId;
    }

    @RequestMapping("/addpurchase")
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
        return "cart";
    }
    @RequestMapping("add-cart-purchase")
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
