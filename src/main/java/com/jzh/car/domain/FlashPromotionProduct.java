package com.jzh.car.domain;

import com.jzh.car.model.PmsProduct;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.math.BigDecimal;

/**
 * 秒杀信息和商品对象封装
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class FlashPromotionProduct extends PmsProduct{
    @ApiModelProperty("秒杀价格")
    private BigDecimal flashPromotionPrice;
    @ApiModelProperty("用于秒杀到数量")
    private Integer flashPromotionCount;
    @ApiModelProperty("秒杀限购数量")
    private Integer flashPromotionLimit;
}
