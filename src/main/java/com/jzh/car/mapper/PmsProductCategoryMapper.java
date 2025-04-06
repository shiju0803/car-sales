package com.jzh.car.mapper;

import com.jzh.car.dto.PmsProductCategoryWithChildrenItem;
import com.jzh.car.model.PmsProductCategory;
import com.jzh.car.model.PmsProductCategoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsProductCategoryMapper {
    /**
     * 获取汽车分类及其子分类
     */
    List<PmsProductCategoryWithChildrenItem> listWithChildren();

    long countByExample(PmsProductCategoryExample example);

    int deleteByExample(PmsProductCategoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsProductCategory record);

    int insertSelective(PmsProductCategory record);

    List<PmsProductCategory> selectByExampleWithBLOBs(PmsProductCategoryExample example);

    List<PmsProductCategory> selectByExample(PmsProductCategoryExample example);

    PmsProductCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsProductCategory record, @Param("example") PmsProductCategoryExample example);

    int updateByExampleWithBLOBs(@Param("record") PmsProductCategory record, @Param("example") PmsProductCategoryExample example);

    int updateByExample(@Param("record") PmsProductCategory record, @Param("example") PmsProductCategoryExample example);

    int updateByPrimaryKeySelective(PmsProductCategory record);

    int updateByPrimaryKeyWithBLOBs(PmsProductCategory record);

    int updateByPrimaryKey(PmsProductCategory record);
}