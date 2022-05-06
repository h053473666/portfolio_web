package com.alien.dao;

import com.alien.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SimilarMapper {

    List<Product> querySimilar5(@Param("itemId") String itemId);

    List<Product> queryCategory180(@Param("category") String category);

    List<Product> querySimilar(@Param("itemId") String itemId);
}
