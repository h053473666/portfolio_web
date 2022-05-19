package com.alien.dao;

import com.alien.pojo.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartMapper {

    int addCart(@Param("account") String account, @Param("itemId") String itemId, @Param("purchaseVolume") int purchaseVolume);

    int addPurchase(@Param("account") String account, @Param("itemId") String itemId, @Param("purchaseVolume") int purchaseVolume);

    int addCartPurchase(@Param("carts") List<Cart> carts);

    int deleteCart(@Param("carts") List<Cart> carts, @Param("account") String account);

    List<Cart> queryCart(@Param("account") String account);

    List<Cart> queryPurchase(@Param("account") String account, @Param("limit") int limit);

    int deleteCartByItemId(@Param("account") String account, @Param("itemId") String itemId);

    List<Cart> queryCartByItemId(@Param("account") String account, @Param("itemId") String itemId);

    int updateCartPurchaseVolume(Cart cart);
}
