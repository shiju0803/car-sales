package com.jzh.car.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

/**
 * 查询单个汽车修改后返回的结果
 */
public class PmsProductResult extends PmsProductParam {
    @Getter
    @Setter
    @ApiModelProperty("汽车所选分类的父id")
    private Long cateParentId;
}
