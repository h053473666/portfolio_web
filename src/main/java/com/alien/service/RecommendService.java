package com.alien.service;

import com.alien.pojo.Product;

import java.util.List;

public interface RecommendService {

    public List<Product> queryRecommend(List<String> trackings);
}
