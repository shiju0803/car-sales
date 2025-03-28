package com.jzh.car.mapper;

import com.jzh.car.model.CmsSubjectProductRelation;
import com.jzh.car.model.CmsSubjectProductRelationExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CmsSubjectProductRelationMapper {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<CmsSubjectProductRelation> subjectProductRelationList);

    long countByExample(CmsSubjectProductRelationExample example);

    int deleteByExample(CmsSubjectProductRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(CmsSubjectProductRelation record);

    int insertSelective(CmsSubjectProductRelation record);

    List<CmsSubjectProductRelation> selectByExample(CmsSubjectProductRelationExample example);

    CmsSubjectProductRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") CmsSubjectProductRelation record, @Param("example") CmsSubjectProductRelationExample example);

    int updateByExample(@Param("record") CmsSubjectProductRelation record, @Param("example") CmsSubjectProductRelationExample example);

    int updateByPrimaryKeySelective(CmsSubjectProductRelation record);

    int updateByPrimaryKey(CmsSubjectProductRelation record);
}