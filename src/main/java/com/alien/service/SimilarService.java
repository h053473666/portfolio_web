package com.alien.service;

import com.alien.pojo.Product;


import java.util.List;

public interface SimilarService {

    List<Product> querySimilar5(String itemId);

    List<Product> queryCategory180(String category);

    List<Product> querySimilar(String itemId);
}
