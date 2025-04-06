package com.jzh.car.service;

import com.jzh.car.dto.PmsProductParam;
import com.jzh.car.dto.PmsProductQueryParam;
import com.jzh.car.dto.PmsProductResult;
import com.jzh.car.model.PmsProduct;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 汽车管理Service
 */
public interface PmsProductService {
    /**
     * 创建汽车
     */
    int create(PmsProductParam productParam);

    /**
     * 根据汽车ID获取汽车信息（用于更新汽车）
     */
    PmsProductResult getUpdateInfo(Long id);

    /**
     * 更新汽车
     */
    @Transactional
    int update(Long id, PmsProductParam productParam);

    /**
     * 分页查询汽车
     */
    List<PmsProduct> list(PmsProductQueryParam productQueryParam, Integer pageSize, Integer pageNum);

    /**
     * 批量修改汽车上架状态
     */
    int updatePublishStatus(List<Long> ids, Integer publishStatus);

    /**
     * 批量修改汽车推荐状态
     */
    int updateRecommendStatus(List<Long> ids, Integer recommendStatus);

    /**
     * 批量修改新品状态
     */
    int updateNewStatus(List<Long> ids, Integer newStatus);

    /**
     * 批量删除汽车
     */
    int updateDeleteStatus(List<Long> ids, Integer deleteStatus);

    /**
     * 根据汽车名称或者货号模糊查询
     */
    List<PmsProduct> list(String keyword);
}
