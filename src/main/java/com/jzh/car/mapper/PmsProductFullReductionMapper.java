package com.jzh.car.mapper;

import com.jzh.car.model.PmsProductFullReduction;
import com.jzh.car.model.PmsProductFullReductionExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsProductFullReductionMapper {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<PmsProductFullReduction> productFullReductionList);

    long countByExample(PmsProductFullReductionExample example);

    int deleteByExample(PmsProductFullReductionExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsProductFullReduction record);

    int insertSelective(PmsProductFullReduction record);

    List<PmsProductFullReduction> selectByExample(PmsProductFullReductionExample example);

    PmsProductFullReduction selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsProductFullReduction record, @Param("example") PmsProductFullReductionExample example);

    int updateByExample(@Param("record") PmsProductFullReduction record, @Param("example") PmsProductFullReductionExample example);

    int updateByPrimaryKeySelective(PmsProductFullReduction record);

    int updateByPrimaryKey(PmsProductFullReduction record);
}