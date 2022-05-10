package com.alien.service;

import com.alien.dao.SearchMapper;
import com.alien.pojo.Product;
import com.alien.pojo.Search;

import java.util.List;

public class SearchServiceImpl implements SearchService{

    private SearchMapper searchMapper;

    public void setSearchMapper(SearchMapper searchMapper) {
        this.searchMapper = searchMapper;
    }


    @Override
    public List<Product> queryProductBySearch(Search search) {
        return searchMapper.queryProductBySearch(search);
    }
}
