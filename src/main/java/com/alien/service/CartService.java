package com.alien.service;

import com.alien.pojo.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartService {

    int addCart(String account, String itemId,  int purchaseVolume);

    int addPurchase(String account, String itemId, int purchaseVolume);

    int addCartPurchase( List<Cart> carts);

    int deleteCart(List<String> itemIds, String account);

    List<Cart> queryCart(String account);

    List<Cart> queryPurchase( String account, int limit);

}
