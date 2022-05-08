package com.alien.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class AccountSession {

    public boolean haveAccountSession(HttpServletRequest request) {
        if (request.getSession().getAttribute("account") == null) {
            return false;
        }
        return true;
    };

    public String getAccount(HttpServletRequest request) {
        String account = (String) request.getSession().getAttribute("account");
        return account;
    }

    public void setAccount(HttpServletRequest request,String account) {
        request.getSession().setAttribute("account",account);
    }

    public List<String> getTracking(HttpServletRequest request) {
        List<String> trankings = (List<String>) request.getSession().getAttribute("trankings");
        return trankings;
    }

    public void setTracking(HttpServletRequest request) {
        List<String> trankings = new ArrayList<String>();
        request.getSession().setAttribute("trankings",trankings);
    }
    public void setTracking(HttpServletRequest request, List<String> trankings) {
        request.getSession().setAttribute("trankings",trankings);
    }

    public void addTracking(HttpServletRequest request,String itemId, List<String> trankings) {
        trankings.add(itemId);
        request.getSession().setAttribute("trankings",trankings);
    }

    public void deleteTracking(HttpServletRequest request,String itemId, List<String> trankings) {
        trankings.remove(itemId);
        request.getSession().setAttribute("trankings",trankings);
    }

    public void deleteTracking(HttpServletRequest request,int index, List<String> trankings) {
        trankings.remove(index);
        request.getSession().setAttribute("trankings",trankings);
    }






}
