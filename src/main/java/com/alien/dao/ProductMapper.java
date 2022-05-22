package com.alien.dao;

import com.alien.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {

    Product queryProduct(@Param("itemId") String itemId);

    int updateSalesVolume(@Param("itemId") String itemId,@Param("salesVolume") int salesVolume);

    int updateSalesVolumeByProductList(@Param("productList") List<Product> productList);

}
