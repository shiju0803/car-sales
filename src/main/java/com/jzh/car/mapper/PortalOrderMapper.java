package com.jzh.car.mapper;

import com.jzh.car.dto.OmsOrderDetail;
import com.jzh.car.model.OmsOrderItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 前台订单管理自定义Dao
 */
public interface PortalOrderMapper {
    /**
     * 获取订单及下单商品详情
     */
    OmsOrderDetail getDetail(@Param("orderId") Long orderId);

    /**
     * 修改 pms_sku_stock表的锁定库存及真实库存
     */
    int updateSkuStock(@Param("itemList") List<OmsOrderItem> orderItemList);

    /**
     * 获取超时订单
     * @param minute 超时时间（分）
     */
    List<OmsOrderDetail> getTimeOutOrders(@Param("minute") Integer minute);

    /**
     * 批量修改订单状态
     */
    int updateOrderStatus(@Param("ids") List<Long> ids,@Param("status") Integer status);

    /**
     * 解除取消订单的库存锁定
     */
    int releaseSkuStockLock(@Param("itemList") List<OmsOrderItem> orderItemList);

    /**
     * 根据商品的skuId来锁定库存
     */
    int lockStockBySkuId(@Param("productSkuId")Long productSkuId,@Param("quantity") Integer quantity);

    /**
     * 根据商品的skuId扣减真实库存
     */
    int reduceSkuStock(@Param("productSkuId")Long productSkuId,@Param("quantity") Integer quantity);

    /**
     * 根据商品的skuId释放库存
     */
    int releaseStockBySkuId(@Param("productSkuId")Long productSkuId,@Param("quantity") Integer quantity);
}
