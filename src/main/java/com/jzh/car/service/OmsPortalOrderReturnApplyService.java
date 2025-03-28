package com.jzh.car.service;

import com.jzh.car.domain.OmsOrderReturnApplyParam;

/**
 * 前台订单退货管理Service
 */
public interface OmsPortalOrderReturnApplyService {
    /**
     * 提交申请
     */
    int create(OmsOrderReturnApplyParam returnApply);
}
