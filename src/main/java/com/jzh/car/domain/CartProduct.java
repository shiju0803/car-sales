package com.jzh.car.domain;

import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.PmsProductAttribute;
import com.jzh.car.model.PmsSkuStock;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 购物车中带规格和SKU的商品信息
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class CartProduct extends PmsProduct {
    
    @ApiModelProperty("商品属性列表")
    private List<PmsProductAttribute> productAttributeList;
    
    @ApiModelProperty("商品SKU库存列表")
    private List<PmsSkuStock> skuStockList;
}
