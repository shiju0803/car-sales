package com.jzh.car.domain;

import com.jzh.car.model.SmsCoupon;
import com.jzh.car.model.SmsCouponHistory;
import com.jzh.car.model.SmsCouponProductCategoryRelation;
import com.jzh.car.model.SmsCouponProductRelation;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 优惠券领取历史详情（包括优惠券信息和关联关系）
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class SmsCouponHistoryDetail extends SmsCouponHistory {
    @ApiModelProperty("相关优惠券信息")
    private SmsCoupon coupon;
    @ApiModelProperty("优惠券关联商品")
    private List<SmsCouponProductRelation> productRelationList;
    @ApiModelProperty("优惠券关联商品分类")
    private List<SmsCouponProductCategoryRelation> categoryRelationList;
}
