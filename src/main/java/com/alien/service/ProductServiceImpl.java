package com.alien.service;

import com.alien.dao.ProductMapper;
import com.alien.pojo.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService{

    private ProductMapper productMapper;

    public void setProductMapper(ProductMapper productMapper) {
        this.productMapper = productMapper;
    }

    @Override
    public Product queryProduct(String itemId) {
        return productMapper.queryProduct(itemId);
    }

    @Override
    public int updateSalesVolume(String itemId, int salesVolume) {
        return productMapper.updateSalesVolume(itemId,salesVolume);
    }

    @Override
    public int updateSalesVolumeByProductList(List<Product> productList) {
        return productMapper.updateSalesVolumeByProductList(productList);
    }
}
