package com.jzh.car.service.impl;

import com.jzh.car.mapper.OmsOrderSettingMapper;
import com.jzh.car.model.OmsOrderSetting;
import com.jzh.car.service.OmsOrderSettingService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 订单设置管理Service实现类
 */
@Service
public class OmsOrderSettingServiceImpl implements OmsOrderSettingService {
    @Resource
    private OmsOrderSettingMapper orderSettingMapper;

    @Override
    public OmsOrderSetting getItem(Long id) {
        return orderSettingMapper.selectByPrimaryKey(id);
    }

    @Override
    public int update(Long id, OmsOrderSetting orderSetting) {
        orderSetting.setId(id);
        return orderSettingMapper.updateByPrimaryKey(orderSetting);
    }
}
