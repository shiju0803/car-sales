package com.jzh.car.dto;


import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 商品分类对应属性信息
 */
@Data
@EqualsAndHashCode
public class ProductAttrInfo {
    @ApiModelProperty("商品属性ID")
    private Long attributeId;
    @ApiModelProperty("商品属性分类ID")
    private Long attributeCategoryId;
}
