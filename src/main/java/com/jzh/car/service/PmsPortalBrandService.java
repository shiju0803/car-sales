package com.jzh.car.service;

import com.jzh.car.api.CommonPage;
import com.jzh.car.model.PmsBrand;
import com.jzh.car.model.PmsProduct;

import java.util.List;

/**
 * 前台品牌管理Service
 */
public interface PmsPortalBrandService {
    /**
     * 分页获取推荐品牌
     */
    List<PmsBrand> recommendList(Integer pageNum, Integer pageSize);

    /**
     * 获取品牌详情
     */
    PmsBrand detail(Long brandId);

    /**
     * 分页获取品牌关联汽车
     */
    CommonPage<PmsProduct> productList(Long brandId, Integer pageNum, Integer pageSize);
}
