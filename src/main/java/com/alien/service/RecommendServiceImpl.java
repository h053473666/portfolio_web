package com.alien.service;

import com.alien.dao.RecommendMapper;
import com.alien.pojo.Product;

import java.util.Collections;
import java.util.List;
import java.util.Random;

public class RecommendServiceImpl implements RecommendService{
    private RecommendMapper recommendMapper;

    public void setRecommendMapper(RecommendMapper recommendMapper) {
        this.recommendMapper = recommendMapper;
    }

    @Override
    public List<Product> queryRecommend(List<String> trackings) {
        Random rand = new Random(42);

        //如果有追蹤
        if (trackings != null) {
            //查詢完隨機排列
            List<Product> recommend = recommendMapper.queryRecommend(trackings);
            Collections.shuffle(recommend, rand);

            //總共180 不夠用全部總類前10去補
            if (recommend.size() >= 180) {

                return recommend;
            } else {
                List<Product> queryRank10 = recommendMapper.queryRank10();
                Collections.shuffle(queryRank10, rand);

                recommend.addAll(queryRank10);
                recommend = recommend.subList(0, 180);
                return recommend;
            }


        }   else {
            //如果沒追蹤 直接返回全部前10
            List<Product> queryRank10 = recommendMapper.queryRank10();
            Collections.shuffle(queryRank10, rand);
            return queryRank10;
        }


    }
}
