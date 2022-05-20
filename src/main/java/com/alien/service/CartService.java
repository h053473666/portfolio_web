package com.alien.service;

import com.alien.pojo.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartService {

    int addCart(String account, String itemId,  int purchaseVolume);

    int addPurchase(String account, String itemId, int purchaseVolume);

    int addCartPurchase( List<Cart> carts);

    int deleteCart(List<Cart> carts, String account);

    List<Cart> queryCart(String account);

    List<Cart> queryPurchase( String account, int limit);

    int deleteCartByItemId(String account, String itemId);

    List<Cart> queryCartByItemId(String account, String itemId);

    int updateCartPurchaseVolume(Cart cart);

    int queryCartSize(String account);

}
