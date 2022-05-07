package com.alien.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ClickTrackingService {
    int addTracking(String account, String itemId);

    int deleteTracking(String account, String itemId);

    List<String> queryTracking(String account);

}
