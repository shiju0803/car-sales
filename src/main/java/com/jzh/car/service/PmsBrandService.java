package com.jzh.car.service;

import com.jzh.car.dto.PmsBrandParam;
import com.jzh.car.model.PmsBrand;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 汽车品牌管理Service
 */
public interface PmsBrandService {
    /**
     * 获取所有品牌
     */
    List<PmsBrand> listAllBrand();

    /**
     * 创建品牌
     */
    int createBrand(PmsBrandParam pmsBrandParam);

    /**
     * 修改品牌
     */
    @Transactional
    int updateBrand(Long id, PmsBrandParam pmsBrandParam);

    /**
     * 删除品牌
     */
    int deleteBrand(Long id);

    /**
     * 批量删除品牌
     */
    int deleteBrand(List<Long> ids);

    /**
     * 分页查询品牌
     */
    List<PmsBrand> listBrand(String keyword, Integer showStatus, int pageNum, int pageSize);

    /**
     * 获取品牌详情
     */
    PmsBrand getBrand(Long id);

    /**
     * 修改显示状态
     */
    int updateShowStatus(List<Long> ids, Integer showStatus);

    /**
     * 修改厂家制造商状态
     */
    int updateFactoryStatus(List<Long> ids, Integer factoryStatus);
}
