package com.jzh.car.dto;

import com.jzh.car.model.PmsProductAttribute;
import com.jzh.car.model.PmsProductAttributeCategory;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

/**
 * 带有属性的汽车属性分类
 */
public class PmsProductAttributeCategoryItem extends PmsProductAttributeCategory {
    @Getter
    @Setter
    @ApiModelProperty(value = "汽车属性列表")
    private List<PmsProductAttribute> productAttributeList;
}
