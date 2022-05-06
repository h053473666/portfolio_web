package com.alien.pojo;

public class Product {
    private String itemId;
    private String name;
    private String image;
    private int price;
    private String salesVolume;

    public Product() {
    }

    public Product(String itemId, String name, String image, int price, String salesVolume) {
        this.itemId = itemId;
        this.name = name;
        this.image = image;
        this.price = price;
        this.salesVolume = salesVolume;
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

    public String getSalesVolume() {
        return salesVolume;
    }

    public void setSalesVolume(String salesVolume) {
        this.salesVolume = salesVolume;
    }
}
