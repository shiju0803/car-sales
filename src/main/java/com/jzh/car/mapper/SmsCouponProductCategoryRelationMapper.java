package com.jzh.car.mapper;

import com.jzh.car.model.SmsCouponProductCategoryRelation;
import com.jzh.car.model.SmsCouponProductCategoryRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SmsCouponProductCategoryRelationMapper {

    /**
     * 批量创建
     */
    int insertList(@Param("list")List<SmsCouponProductCategoryRelation> productCategoryRelationList);

    long countByExample(SmsCouponProductCategoryRelationExample example);

    int deleteByExample(SmsCouponProductCategoryRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(SmsCouponProductCategoryRelation record);

    int insertSelective(SmsCouponProductCategoryRelation record);

    List<SmsCouponProductCategoryRelation> selectByExample(SmsCouponProductCategoryRelationExample example);

    SmsCouponProductCategoryRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") SmsCouponProductCategoryRelation record, @Param("example") SmsCouponProductCategoryRelationExample example);

    int updateByExample(@Param("record") SmsCouponProductCategoryRelation record, @Param("example") SmsCouponProductCategoryRelationExample example);

    int updateByPrimaryKeySelective(SmsCouponProductCategoryRelation record);

    int updateByPrimaryKey(SmsCouponProductCategoryRelation record);
}