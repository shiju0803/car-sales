package com.jzh.car.service.impl;

import com.jzh.car.mapper.UmsMemberLevelMapper;
import com.jzh.car.model.UmsMemberLevel;
import com.jzh.car.model.UmsMemberLevelExample;
import com.jzh.car.service.UmsMemberLevelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员等级管理Service实现类
 */
@Service
public class UmsMemberLevelServiceImpl implements UmsMemberLevelService {
    @Resource
    private UmsMemberLevelMapper memberLevelMapper;

    @Override
    public List<UmsMemberLevel> list(Integer defaultStatus) {
        UmsMemberLevelExample example = new UmsMemberLevelExample();
        example.createCriteria().andDefaultStatusEqualTo(defaultStatus);
        return memberLevelMapper.selectByExample(example);
    }
}
