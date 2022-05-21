package com.alien.service;

import com.alien.dao.UserMapper;
import com.alien.pojo.User;

public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public String login(User user) {
        return userMapper.login(user);
    }

    @Override
    public int updatePassword(User user) {
        return userMapper.updatePassword(user);
    }

    @Override
    public int signUp(User user) {
        return userMapper.signUp(user);
    }

    @Override
    public String queryAccount(String account) {
        return userMapper.queryAccount(account);
    }

    @Override
    public String queryCartVerification(String account) {
        return userMapper.queryCartVerification(account);
    }

    @Override
    public int updateCartVerification(User user) {
        return userMapper.updateCartVerification(user);
    }
}
