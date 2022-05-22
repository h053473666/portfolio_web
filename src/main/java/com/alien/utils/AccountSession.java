package com.alien.utils;

import com.alien.pojo.Product;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    public String getRecommendCacheIndex(HttpServletRequest request) {
        String recommendCacheIndex = (String) request.getSession().getAttribute("recommendCacheIndex");
        return recommendCacheIndex;
    }

    public void setRecommendCacheIndex(HttpServletRequest request,String recommendCacheIndex) {
        request.getSession().setAttribute("recommendCacheIndex", recommendCacheIndex);
    }

    public Map<String,List<Product>> getRecommendCache(HttpServletRequest request) {
        Map<String,List<Product>> recommendCache = (Map<String,List<Product>>) request.getSession().getAttribute("recommendCache");
        return recommendCache;
    }

    public void setRecommendCache(HttpServletRequest request) {
        Map<String,List<Product>> recommendCache =new HashMap<>();
        request.getSession().setAttribute("recommendCache", recommendCache);
    }

    public void setRecommendCache(HttpServletRequest request,Map<String,List<Product>> recommendCache) {
        request.getSession().setAttribute("recommendCache", recommendCache);
    }

    public void setCartSize(HttpServletRequest request, int cartSize) {
        request.getSession().setAttribute("cartSize", cartSize);
    }

}
