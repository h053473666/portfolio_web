package com.alien.service;

import com.alien.dao.SimilarMapper;
import com.alien.pojo.Product;

import java.util.List;

public class SimilarServiceImpl implements SimilarService{
    private SimilarMapper similarMapper;

    public void setSimilarMapper(SimilarMapper similarMapper) {
        this.similarMapper = similarMapper;
    }

    @Override
    public List<Product> querySimilar5(String itemId) {
        return similarMapper.querySimilar5(itemId);
    }

    @Override
    public List<Product> queryCategory180(String category) {
        return similarMapper.queryCategory180(category);
    }

    @Override
    public List<Product> querySimilar(String itemId) {
        return similarMapper.querySimilar(itemId);
    }
}
