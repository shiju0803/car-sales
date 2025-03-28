package com.jzh.car.mapper;

import com.jzh.car.model.PmsProductLadder;
import com.jzh.car.model.PmsProductLadderExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PmsProductLadderMapper {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<PmsProductLadder> productLadderList);

    long countByExample(PmsProductLadderExample example);

    int deleteByExample(PmsProductLadderExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PmsProductLadder record);

    int insertSelective(PmsProductLadder record);

    List<PmsProductLadder> selectByExample(PmsProductLadderExample example);

    PmsProductLadder selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PmsProductLadder record, @Param("example") PmsProductLadderExample example);

    int updateByExample(@Param("record") PmsProductLadder record, @Param("example") PmsProductLadderExample example);

    int updateByPrimaryKeySelective(PmsProductLadder record);

    int updateByPrimaryKey(PmsProductLadder record);
}