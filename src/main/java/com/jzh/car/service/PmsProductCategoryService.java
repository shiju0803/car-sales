package com.jzh.car.service;

import com.jzh.car.dto.PmsProductCategoryParam;
import com.jzh.car.dto.PmsProductCategoryWithChildrenItem;
import com.jzh.car.model.PmsProductCategory;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 汽车分类管理Service
 */
public interface PmsProductCategoryService {
    /**
     * 创建汽车分类
     */
    @Transactional
    int create(PmsProductCategoryParam pmsProductCategoryParam);

    /**
     * 修改汽车分类
     */
    @Transactional
    int update(Long id, PmsProductCategoryParam pmsProductCategoryParam);

    /**
     * 分页获取汽车分类
     */
    List<PmsProductCategory> getList(Long parentId, Integer pageSize, Integer pageNum);

    /**
     * 删除汽车分类
     */
    int delete(Long id);

    /**
     * 根据ID获取汽车分类
     */
    PmsProductCategory getItem(Long id);

    /**
     * 批量修改导航状态
     */
    int updateNavStatus(List<Long> ids, Integer navStatus);

    /**
     * 批量修改显示状态
     */
    int updateShowStatus(List<Long> ids, Integer showStatus);

    /**
     * 以层级形式获取汽车分类
     */
    List<PmsProductCategoryWithChildrenItem> listWithChildren();
}
