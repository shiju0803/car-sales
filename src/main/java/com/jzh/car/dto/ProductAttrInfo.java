package com.jzh.car.dto;


import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 汽车分类对应属性信息
 */
@Data
@EqualsAndHashCode
public class ProductAttrInfo {
    @ApiModelProperty("汽车属性ID")
    private Long attributeId;
    @ApiModelProperty("汽车属性分类ID")
    private Long attributeCategoryId;
}
