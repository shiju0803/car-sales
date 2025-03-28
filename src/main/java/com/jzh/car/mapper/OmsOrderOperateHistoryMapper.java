package com.jzh.car.mapper;

import com.jzh.car.model.OmsOrderOperateHistory;
import com.jzh.car.model.OmsOrderOperateHistoryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OmsOrderOperateHistoryMapper {
    /**
     * 批量创建
     */
    int insertList(@Param("list") List<OmsOrderOperateHistory> orderOperateHistoryList);

    long countByExample(OmsOrderOperateHistoryExample example);

    int deleteByExample(OmsOrderOperateHistoryExample example);

    int deleteByPrimaryKey(Long id);

    int insert(OmsOrderOperateHistory record);

    int insertSelective(OmsOrderOperateHistory record);

    List<OmsOrderOperateHistory> selectByExample(OmsOrderOperateHistoryExample example);

    OmsOrderOperateHistory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") OmsOrderOperateHistory record, @Param("example") OmsOrderOperateHistoryExample example);

    int updateByExample(@Param("record") OmsOrderOperateHistory record, @Param("example") OmsOrderOperateHistoryExample example);

    int updateByPrimaryKeySelective(OmsOrderOperateHistory record);

    int updateByPrimaryKey(OmsOrderOperateHistory record);
}