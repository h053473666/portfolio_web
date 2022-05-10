package com.alien.service;

import com.alien.dao.CartMapper;
import com.alien.pojo.Cart;

import java.util.List;

public class CartServiceImpl implements CartService {

    private CartMapper cartMapper;

    public void setCartMapper(CartMapper cartMapper) {
        this.cartMapper = cartMapper;
    }

    @Override
    public int addCart(String account, String itemId, int purchaseVolume) {
        return cartMapper.addCart(account, itemId, purchaseVolume);
    }

    @Override
    public int addPurchase(String account, String itemId, int purchaseVolume) {
        return cartMapper.addPurchase(account,itemId,purchaseVolume);
    }

    @Override
    public int addCartPurchase(List<Cart> carts) {
        return cartMapper.addCartPurchase(carts);
    }

    @Override
    public int deleteCart(List<String> itemIds, String account) {
        return cartMapper.deleteCart(itemIds,account);
    }

    @Override
    public List<Cart> queryCart(String account) {
        return cartMapper.queryCart(account);
    }

    @Override
    public List<Cart> queryPurchase(String account, int limit) {
        return cartMapper.queryPurchase(account, limit);
    }
}
