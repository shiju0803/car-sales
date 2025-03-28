package com.jzh.car.mapper;

import com.jzh.car.dto.PmsProductResult;
import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.PmsProductExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsProductMapper {
    /**
     * 获取商品编辑信息
     */
    PmsProductResult getUpdateInfo(@Param("id") Long id);

    long countByExample(PmsProductExample example);

    int deleteByExample(PmsProductExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsProduct record);

    int insertSelective(PmsProduct record);

    List<PmsProduct> selectByExampleWithBLOBs(PmsProductExample example);

    List<PmsProduct> selectByExample(PmsProductExample example);

    PmsProduct selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsProduct record, @Param("example") PmsProductExample example);

    int updateByExampleWithBLOBs(@Param("record") PmsProduct record, @Param("example") PmsProductExample example);

    int updateByExample(@Param("record") PmsProduct record, @Param("example") PmsProductExample example);

    int updateByPrimaryKeySelective(PmsProduct record);

    int updateByPrimaryKeyWithBLOBs(PmsProduct record);

    int updateByPrimaryKey(PmsProduct record);
}