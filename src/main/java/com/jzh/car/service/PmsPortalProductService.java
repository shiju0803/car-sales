package com.jzh.car.service;

import com.jzh.car.domain.PmsPortalProductDetail;
import com.jzh.car.domain.PmsProductCategoryNode;
import com.jzh.car.model.PmsProduct;

import java.util.List;

/**
 * 前台汽车管理Service
 */
public interface PmsPortalProductService {

    /**
     * 综合搜索汽车
     */
    List<PmsProduct> search(String keyword, Long brandId, Long productCategoryId, Integer pageNum, Integer pageSize, Integer sort);

    /**
     * 以树形结构获取所有汽车分类
     */
    List<PmsProductCategoryNode> categoryTreeList();

    /**
     * 获取前台汽车详情
     */
    PmsPortalProductDetail detail(Long id);
}
