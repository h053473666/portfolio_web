package com.alien.utils;

import javax.servlet.http.HttpServletRequest;

public class AccountSession {

    public boolean haveAccountSession(HttpServletRequest request) {
        if (request.getSession().getAttribute("account") == null) {
            return false;
        }
        return true;
    };


}
