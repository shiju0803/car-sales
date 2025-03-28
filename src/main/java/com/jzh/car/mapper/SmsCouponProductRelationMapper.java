package com.jzh.car.mapper;

import com.jzh.car.model.SmsCouponProductRelation;
import com.jzh.car.model.SmsCouponProductRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SmsCouponProductRelationMapper {

    /**
     * 批量创建
     */
    int insertList(@Param("list")List<SmsCouponProductRelation> productRelationList);

    long countByExample(SmsCouponProductRelationExample example);

    int deleteByExample(SmsCouponProductRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(SmsCouponProductRelation record);

    int insertSelective(SmsCouponProductRelation record);

    List<SmsCouponProductRelation> selectByExample(SmsCouponProductRelationExample example);

    SmsCouponProductRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") SmsCouponProductRelation record, @Param("example") SmsCouponProductRelationExample example);

    int updateByExample(@Param("record") SmsCouponProductRelation record, @Param("example") SmsCouponProductRelationExample example);

    int updateByPrimaryKeySelective(SmsCouponProductRelation record);

    int updateByPrimaryKey(SmsCouponProductRelation record);
}