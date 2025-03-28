package com.jzh.car.dto;

import com.jzh.car.model.UmsMenu;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * 后台菜单节点封装
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class UmsMenuNode extends UmsMenu {
    @ApiModelProperty(value = "子级菜单")
    private List<UmsMenuNode> children;
}
