package com.alien.dao;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClickTrackingMapper {

    int addTracking(@Param("account") String account, @Param("itemId") String itemId);

    int deleteTracking(@Param("account") String account, @Param("itemId") String itemId);

    List<String> queryTracking(@Param("account") String account);
}
