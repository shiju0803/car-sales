package com.jzh.car.domain;

import com.jzh.car.model.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * 前台汽车详情
 */
@Data
public class PmsPortalProductDetail{
    @ApiModelProperty("汽车信息")
    private PmsProduct product;
    @ApiModelProperty("汽车品牌")
    private PmsBrand brand;
    @ApiModelProperty("汽车属性与参数")
    private List<PmsProductAttribute> productAttributeList;
    @ApiModelProperty("手动录入的汽车属性与参数值")
    private List<PmsProductAttributeValue> productAttributeValueList;
}
