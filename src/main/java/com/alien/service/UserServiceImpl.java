package com.alien.service;

import com.alien.dao.UserMapper;
import com.alien.pojo.User;

public class UserServiceImpl implements UserService{

    private UserMapper userMapper;

    public UserServiceImpl(UserMapper userMapper) {
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
}
