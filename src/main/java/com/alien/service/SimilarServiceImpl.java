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
    public List<Product> querySimilar(String itemId, int page, String category) {
        List<Product> similarProducts = similarMapper.querySimilar(itemId);
        List<Product> category180 = similarMapper.queryCategory180(category);
        int size = similarProducts.size();

        //總共180 相似的不夠180 用同種類的去補 1頁60個
        category180 = category180.subList(0, 180 - size);
        similarProducts.addAll(category180);
        similarProducts = similarProducts.subList(page*60, (page+1) * 60);

        return similarProducts;
    }


}
