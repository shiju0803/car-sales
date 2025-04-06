package com.jzh.car.mapper;

import com.jzh.car.dto.PmsProductAttributeCategoryItem;
import com.jzh.car.model.PmsProductAttributeCategory;
import com.jzh.car.model.PmsProductAttributeCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsProductAttributeCategoryMapper {
    /**
     * 获取包含属性的汽车属性分类
     */
    List<PmsProductAttributeCategoryItem> getListWithAttr();

    long countByExample(PmsProductAttributeCategoryExample example);

    int deleteByExample(PmsProductAttributeCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsProductAttributeCategory record);

    int insertSelective(PmsProductAttributeCategory record);

    List<PmsProductAttributeCategory> selectByExample(PmsProductAttributeCategoryExample example);

    PmsProductAttributeCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsProductAttributeCategory record, @Param("example") PmsProductAttributeCategoryExample example);

    int updateByExample(@Param("record") PmsProductAttributeCategory record, @Param("example") PmsProductAttributeCategoryExample example);

    int updateByPrimaryKeySelective(PmsProductAttributeCategory record);

    int updateByPrimaryKey(PmsProductAttributeCategory record);
}