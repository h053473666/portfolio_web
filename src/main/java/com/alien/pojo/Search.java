package com.alien.pojo;

public class Search {
    private String name;

    private String category;

    private String orderBy;

    private String orderType;

    private int limit;

    public Search() {
    }

    public Search(String name) {
        this.name = name;
    }

    public Search(String name, String category, String orderBy, String orderType, int limit) {
        this.name = name;
        this.category = category;
        this.orderBy = orderBy;
        this.orderType = orderType;
        this.limit = limit;
    }

    public Search(String name, String orderBy, String orderType, int limit) {
        this.name = name;
        this.orderBy = orderBy;
        this.orderType = orderType;
        this.limit = limit;
    }



    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public String getOrderType() {
        return orderType;
    }

    public void setOrderType(String orderType) {
        this.orderType = orderType;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }
}
