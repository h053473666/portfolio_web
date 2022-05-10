package com.alien.service;

import com.alien.pojo.Product;
import com.alien.pojo.Search;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SearchService {
    List<Product> queryProductBySearch(Search search);
}
