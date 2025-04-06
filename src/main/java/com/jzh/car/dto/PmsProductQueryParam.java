package com.jzh.car.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 汽车查询参数
 */
@Data
@EqualsAndHashCode
public class PmsProductQueryParam {
    @ApiModelProperty("上架状态")
    private Integer publishStatus;
    @ApiModelProperty("审核状态")
    private Integer verifyStatus;
    @ApiModelProperty("汽车名称模糊关键字")
    private String keyword;
    @ApiModelProperty("汽车货号")
    private String productSn;
    @ApiModelProperty("汽车分类编号")
    private Long productCategoryId;
    @ApiModelProperty("汽车品牌编号")
    private Long brandId;
}
