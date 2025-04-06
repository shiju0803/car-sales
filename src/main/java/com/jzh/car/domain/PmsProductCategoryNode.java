package com.jzh.car.domain;

import com.jzh.car.model.PmsProductCategory;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 包含子分类的汽车分类
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class PmsProductCategoryNode extends PmsProductCategory {
    @ApiModelProperty("子分类集合")
    private List<PmsProductCategoryNode> children;
}
