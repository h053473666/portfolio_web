package com.alien.dao;

import com.alien.pojo.User;

public interface UserMapper {
    //登入查詢
    String login(User user);

    //更改密碼
    int updatePassword (User user);

    //註冊
    int signUp (User user);
}
