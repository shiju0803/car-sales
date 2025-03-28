package com.jzh.car.service.impl;

import cn.hutool.core.util.StrUtil;
import com.github.pagehelper.PageHelper;
import com.jzh.car.mapper.SmsHomeRecommendSubjectMapper;
import com.jzh.car.model.SmsHomeRecommendSubject;
import com.jzh.car.model.SmsHomeRecommendSubjectExample;
import com.jzh.car.service.SmsHomeRecommendSubjectService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 首页专题推荐管理Service实现类
 */
@Service
public class SmsHomeRecommendSubjectServiceImpl implements SmsHomeRecommendSubjectService {
    @Resource
    private SmsHomeRecommendSubjectMapper smsHomeRecommendSubjectMapper;

    @Override
    public int create(List<SmsHomeRecommendSubject> recommendSubjectList) {
        for (SmsHomeRecommendSubject recommendSubject : recommendSubjectList) {
            recommendSubject.setRecommendStatus(1);
            recommendSubject.setSort(0);
            smsHomeRecommendSubjectMapper.insert(recommendSubject);
        }
        return recommendSubjectList.size();
    }

    @Override
    public int updateSort(Long id, Integer sort) {
        SmsHomeRecommendSubject recommendSubject = new SmsHomeRecommendSubject();
        recommendSubject.setId(id);
        recommendSubject.setSort(sort);
        return smsHomeRecommendSubjectMapper.updateByPrimaryKeySelective(recommendSubject);
    }

    @Override
    public int delete(List<Long> ids) {
        SmsHomeRecommendSubjectExample example = new SmsHomeRecommendSubjectExample();
        example.createCriteria().andIdIn(ids);
        return smsHomeRecommendSubjectMapper.deleteByExample(example);
    }

    @Override
    public int updateRecommendStatus(List<Long> ids, Integer recommendStatus) {
        SmsHomeRecommendSubjectExample example = new SmsHomeRecommendSubjectExample();
        example.createCriteria().andIdIn(ids);
        SmsHomeRecommendSubject record = new SmsHomeRecommendSubject();
        record.setRecommendStatus(recommendStatus);
        return smsHomeRecommendSubjectMapper.updateByExampleSelective(record, example);
    }

    @Override
    public List<SmsHomeRecommendSubject> list(String subjectName, Integer recommendStatus, Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        SmsHomeRecommendSubjectExample example = new SmsHomeRecommendSubjectExample();
        SmsHomeRecommendSubjectExample.Criteria criteria = example.createCriteria();
        if (!StrUtil.isEmpty(subjectName)) {
            criteria.andSubjectNameLike("%" + subjectName + "%");
        }
        if (recommendStatus != null) {
            criteria.andRecommendStatusEqualTo(recommendStatus);
        }
        example.setOrderByClause("sort desc");
        return smsHomeRecommendSubjectMapper.selectByExample(example);
    }
}
