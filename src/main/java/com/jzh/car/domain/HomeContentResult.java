package com.jzh.car.domain;

import com.jzh.car.model.CmsSubject;
import com.jzh.car.model.PmsBrand;
import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.SmsHomeAdvertise;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * 首页内容返回信息封装
 */
@Data
public class HomeContentResult {
    @ApiModelProperty("轮播广告")
    private List<SmsHomeAdvertise> advertiseList;
    @ApiModelProperty("推荐品牌")
    private List<PmsBrand> brandList;
    @ApiModelProperty("当前秒杀场次")
    private HomeFlashPromotion homeFlashPromotion;
    @ApiModelProperty("新品推荐")
    private List<PmsProduct> newProductList;
    @ApiModelProperty("人气推荐")
    private List<PmsProduct> hotProductList;
    @ApiModelProperty("推荐专题")
    private List<CmsSubject> subjectList;
}
