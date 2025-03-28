package com.jzh.car.mapper;

import com.jzh.car.model.UmsAdminRoleRelation;
import com.jzh.car.model.UmsAdminRoleRelationExample;
import com.jzh.car.model.UmsResource;
import com.jzh.car.model.UmsRole;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UmsAdminRoleRelationMapper {

    /**
     * 批量插入用户角色关系
     */
    int insertList(@Param("list") List<UmsAdminRoleRelation> adminRoleRelationList);

    /**
     * 获取用于所有角色
     */
    List<UmsRole> getRoleList(@Param("adminId") Long adminId);

    /**
     * 获取用户所有可访问资源
     */
    List<UmsResource> getResourceList(@Param("adminId") Long adminId);

    /**
     * 获取资源相关用户ID列表
     */
    List<Long> getAdminIdList(@Param("resourceId") Long resourceId);

    long countByExample(UmsAdminRoleRelationExample example);

    int deleteByExample(UmsAdminRoleRelationExample example);

    int deleteByPrimaryKey(Long id);

    int insert(UmsAdminRoleRelation record);

    int insertSelective(UmsAdminRoleRelation record);

    List<UmsAdminRoleRelation> selectByExample(UmsAdminRoleRelationExample example);

    UmsAdminRoleRelation selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") UmsAdminRoleRelation record, @Param("example") UmsAdminRoleRelationExample example);

    int updateByExample(@Param("record") UmsAdminRoleRelation record, @Param("example") UmsAdminRoleRelationExample example);

    int updateByPrimaryKeySelective(UmsAdminRoleRelation record);

    int updateByPrimaryKey(UmsAdminRoleRelation record);
}