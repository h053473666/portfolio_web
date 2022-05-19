package com.alien.pojo;

public class User {

    private String account;
    private String password;
    private String cartVerification;

    public User() {
    }

    public User(String account, String password) {
        this.account = account;
        this.password = password;
    }

    public User(String account, String password, String cartVerification) {
        this.account = account;
        this.password = password;
        this.cartVerification = cartVerification;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCartVerification() {
        return cartVerification;
    }

    public void setCartVerification(String cartVerification) {
        this.cartVerification = cartVerification;
    }
}
