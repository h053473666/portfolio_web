package com.alien.service;

import com.alien.pojo.User;

public interface UserService {
    //登入查詢
    String login(User user);

    //更改密碼
    int updatePassword (User user);

    //註冊
    int signUp (User user);

    String queryAccount(String account);

    String queryCartVerification(User user);

    int updateCartVerification(User user);

}

