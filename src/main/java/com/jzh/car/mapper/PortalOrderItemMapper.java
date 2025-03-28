package com.jzh.car.mapper;

import com.jzh.car.model.OmsOrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 订单商品信息管理自定义Dao
 */
public interface PortalOrderItemMapper {
    /**
     * 批量插入
     */
    int insertList(@Param("list") List<OmsOrderItem> list);
}
