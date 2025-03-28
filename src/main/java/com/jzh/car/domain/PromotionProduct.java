package com.jzh.car.domain;

import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.PmsProductFullReduction;
import com.jzh.car.model.PmsProductLadder;
import com.jzh.car.model.PmsSkuStock;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 促销商品信息，包括sku、打折优惠、满减优惠
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class PromotionProduct extends PmsProduct {
    //商品库存信息
    private List<PmsSkuStock> skuStockList;
    //商品打折信息
    private List<PmsProductLadder> productLadderList;
    //商品满减信息
    private List<PmsProductFullReduction> productFullReductionList;
}
