package com.alien.controller;

import com.alien.pojo.Cart;
import com.alien.service.CartService;
import com.alien.utils.AccountSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


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


}
