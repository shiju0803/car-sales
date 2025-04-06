package com.jzh.car.dto;

import com.jzh.car.model.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 创建和修改汽车的请求参数
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class PmsProductParam extends PmsProduct{
    @ApiModelProperty("汽车参数及自定义规格属性")
    private List<PmsProductAttributeValue> productAttributeValueList;
}
