package com.jzh.car.service;

import com.jzh.car.domain.HomeContentResult;
import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.PmsProductCategory;

import java.util.List;

/**
 * 首页内容管理Service
 */
public interface HomeService {

    /**
     * 获取首页内容
     */
    HomeContentResult content();

    /**
     * 首页汽车推荐
     */
    List<PmsProduct> recommendProductList(Integer pageSize, Integer pageNum);

    /**
     * 获取汽车分类
     *
     * @param parentId 0:获取一级分类；其他：获取指定二级分类
     */
    List<PmsProductCategory> getProductCateList(Long parentId);

    /**
     * 分页获取人气推荐汽车
     */
    List<PmsProduct> hotProductList(Integer pageNum, Integer pageSize);

    /**
     * 分页获取新品推荐汽车
     */
    List<PmsProduct> newProductList(Integer pageNum, Integer pageSize);
}
