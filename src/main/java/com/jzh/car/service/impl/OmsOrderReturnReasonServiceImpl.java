package com.jzh.car.service.impl;

import com.github.pagehelper.PageHelper;
import com.jzh.car.mapper.OmsOrderReturnReasonMapper;
import com.jzh.car.model.OmsOrderReturnReason;
import com.jzh.car.model.OmsOrderReturnReasonExample;
import com.jzh.car.service.OmsOrderReturnReasonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 订单原因管理Service实现类
 */
@Service
public class OmsOrderReturnReasonServiceImpl implements OmsOrderReturnReasonService {
    @Resource
    private OmsOrderReturnReasonMapper returnReasonMapper;

    @Override
    public int create(OmsOrderReturnReason returnReason) {
        returnReason.setCreateTime(new Date());
        return returnReasonMapper.insert(returnReason);
    }

    @Override
    public int update(Long id, OmsOrderReturnReason returnReason) {
        returnReason.setId(id);
        return returnReasonMapper.updateByPrimaryKey(returnReason);
    }

    @Override
    public int delete(List<Long> ids) {
        OmsOrderReturnReasonExample example = new OmsOrderReturnReasonExample();
        example.createCriteria().andIdIn(ids);
        return returnReasonMapper.deleteByExample(example);
    }

    @Override
    public List<OmsOrderReturnReason> list(Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        OmsOrderReturnReasonExample example = new OmsOrderReturnReasonExample();
        example.setOrderByClause("sort desc");
        return returnReasonMapper.selectByExample(example);
    }

    @Override
    public int updateStatus(List<Long> ids, Integer status) {
        if (!status.equals(0) && !status.equals(1)) {
            return 0;
        }
        OmsOrderReturnReason record = new OmsOrderReturnReason();
        record.setStatus(status);
        OmsOrderReturnReasonExample example = new OmsOrderReturnReasonExample();
        example.createCriteria().andIdIn(ids);
        return returnReasonMapper.updateByExampleSelective(record, example);
    }

    @Override
    public OmsOrderReturnReason getItem(Long id) {
        return returnReasonMapper.selectByPrimaryKey(id);
    }
}
