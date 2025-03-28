package com.jzh.car.service.impl;

import cn.hutool.core.util.StrUtil;
import com.github.pagehelper.PageHelper;
import com.jzh.car.mapper.SmsCouponHistoryMapper;
import com.jzh.car.model.SmsCouponHistory;
import com.jzh.car.model.SmsCouponHistoryExample;
import com.jzh.car.service.SmsCouponHistoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 优惠券领取记录管理Service实现类
 */
@Service
public class SmsCouponHistoryServiceImpl implements SmsCouponHistoryService {
    @Resource
    private SmsCouponHistoryMapper historyMapper;

    @Override
    public List<SmsCouponHistory> list(Long couponId, Integer useStatus, String orderSn, Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        SmsCouponHistoryExample example = new SmsCouponHistoryExample();
        SmsCouponHistoryExample.Criteria criteria = example.createCriteria();
        if (couponId != null) {
            criteria.andCouponIdEqualTo(couponId);
        }
        if (useStatus != null) {
            criteria.andUseStatusEqualTo(useStatus);
        }
        if (!StrUtil.isEmpty(orderSn)) {
            criteria.andOrderSnEqualTo(orderSn);
        }
        return historyMapper.selectByExample(example);
    }
}
