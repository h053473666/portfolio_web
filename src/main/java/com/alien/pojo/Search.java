package com.alien.pojo;

public class Search {
    private String name;

    private String category;

    private String oderBy;

    private String orderType;

    private int limit;

    public Search() {
    }

    public Search(String name, String category, String oderBy, String orderType, int limit) {
        this.name = name;
        this.category = category;
        this.oderBy = oderBy;
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

    public String getOderBy() {
        return oderBy;
    }

    public void setOderBy(String oderBy) {
        this.oderBy = oderBy;
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
