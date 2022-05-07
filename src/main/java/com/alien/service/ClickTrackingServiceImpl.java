package com.alien.service;

import com.alien.dao.ClickTrackingMapper;

import java.util.List;

public class ClickTrackingServiceImpl implements ClickTrackingService{

    private ClickTrackingMapper clickTrackingMapper;

    public void setClickTrackingMapper(ClickTrackingMapper clickTrackingMapper) {
        this.clickTrackingMapper = clickTrackingMapper;
    }

    @Override
    public int addTracking(String account, String itemId) {
        return clickTrackingMapper.addTracking(account,itemId);
    }

    @Override
    public int deleteTracking(String account, String itemId) {
        return clickTrackingMapper.deleteTracking(account,itemId);
    }

    @Override
    public List<String> queryTracking(String account) {
        return clickTrackingMapper.queryTracking(account);
    }
}
