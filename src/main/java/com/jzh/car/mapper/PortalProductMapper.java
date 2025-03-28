package com.jzh.car.mapper;

import com.jzh.car.model.SmsCoupon;
import com.jzh.car.domain.CartProduct;
import com.jzh.car.domain.PromotionProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 前台购物车商品管理自定义Dao
 */
public interface PortalProductMapper {
    /**
     * 获取购物车商品信息
     */
    CartProduct getCartProduct(@Param("id") Long id);

    /**
     * 获取促销商品信息列表
     */
    List<PromotionProduct> getPromotionProductList(@Param("ids") List<Long> ids);

    /**
     * 获取可用优惠券列表
     */
    List<SmsCoupon> getAvailableCouponList(@Param("productId") Long productId, @Param("productCategoryId") Long productCategoryId);
}
