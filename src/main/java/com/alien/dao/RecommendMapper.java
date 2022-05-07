package com.alien.dao;

import com.alien.pojo.Product;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecommendMapper {

    List<Product> queryRecommend(@Param("trackings") List<String> trackings);

    List<Product> queryRank10(@Param("rank") int rank);
}
