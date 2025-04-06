package com.jzh.car.service;

import com.jzh.car.dto.PmsProductAttributeParam;
import com.jzh.car.dto.ProductAttrInfo;
import com.jzh.car.model.PmsProductAttribute;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 汽车属性管理Service
 */
public interface PmsProductAttributeService {
    /**
     * 根据分类ID和类型分页获取汽车属性
     * @param cid 分类id
     * @param type 0->规格；1->参数
     */
    List<PmsProductAttribute> getList(Long cid, Integer type, Integer pageSize, Integer pageNum);

    /**
     * 添加汽车属性
     */
    @Transactional
    int create(PmsProductAttributeParam pmsProductAttributeParam);

    /**
     * 修改汽车属性
     */
    int update(Long id, PmsProductAttributeParam productAttributeParam);

    /**
     * 获取单个汽车属性信息
     */
    PmsProductAttribute getItem(Long id);

    /**
     * 批量删除汽车属性
     */
    @Transactional
    int delete(List<Long> ids);

    /**
     * 获取汽车分类对应属性列表
     */
    List<ProductAttrInfo> getProductAttrInfo(Long productCategoryId);
}
