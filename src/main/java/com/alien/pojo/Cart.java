package com.alien.pojo;

public class Cart {
    private String account;
    private String itemId;
    private String name;
    private String image;
    private int price;
    private String category;
    private int salesVolume;
    private int purchaseVolume;

    public Cart() {
    }

    public Cart(String account, String itemId, String name, String image, int price, String category, int salesVolume, int purchaseVolume) {
        this.account = account;
        this.itemId = itemId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.category = category;
        this.salesVolume = salesVolume;
        this.purchaseVolume = purchaseVolume;
    }

    public Cart(String account, String itemId, int purchaseVolume) {
        this.account = account;
        this.itemId = itemId;
        this.purchaseVolume = purchaseVolume;
    }


    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getItemId() {
        return itemId;
    }

    public void setItemId(String itemId) {
        this.itemId = itemId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(int salesVolume) {
        this.salesVolume = salesVolume;
    }

    public int getPurchaseVolume() {
        return purchaseVolume;
    }

    public void setPurchaseVolume(int purchaseVolume) {
        this.purchaseVolume = purchaseVolume;
    }
}
