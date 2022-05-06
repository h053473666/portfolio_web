package com.alien.dao;

import com.alien.pojo.Product;
import org.apache.ibatis.annotations.Param;

public interface ProductMapper {

    Product queryProduct(@Param("itemId") String itemId);

    int updateSalesVolume(@Param("itemId") String itemId,@Param("salesVolume") int salesVolume);
}
