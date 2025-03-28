package com.jzh.car.service.impl;

import com.github.pagehelper.PageHelper;
import com.jzh.car.dto.SmsFlashPromotionProduct;
import com.jzh.car.mapper.SmsFlashPromotionProductRelationMapper;
import com.jzh.car.model.SmsFlashPromotionProductRelation;
import com.jzh.car.model.SmsFlashPromotionProductRelationExample;
import com.jzh.car.service.SmsFlashPromotionProductRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 限时购商品关联管理Service实现类
 */
@Service
public class SmsFlashPromotionProductRelationServiceImpl implements SmsFlashPromotionProductRelationService {
    @Resource
    private com.jzh.car.mapper.SmsFlashPromotionProductRelationMapper relationMapper;
    @Resource
    private SmsFlashPromotionProductRelationMapper relationDao;

    @Override
    public int create(List<SmsFlashPromotionProductRelation> relationList) {
        for (SmsFlashPromotionProductRelation relation : relationList) {
            relationMapper.insert(relation);
        }
        return relationList.size();
    }

    @Override
    public int update(Long id, SmsFlashPromotionProductRelation relation) {
        relation.setId(id);
        return relationMapper.updateByPrimaryKey(relation);
    }

    @Override
    public int delete(Long id) {
        return relationMapper.deleteByPrimaryKey(id);
    }

    @Override
    public SmsFlashPromotionProductRelation getItem(Long id) {
        return relationMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<SmsFlashPromotionProduct> list(Long flashPromotionId, Long flashPromotionSessionId, Integer pageSize, Integer pageNum) {
        PageHelper.startPage(pageNum, pageSize);
        return relationDao.getList(flashPromotionId, flashPromotionSessionId);
    }

    @Override
    public long getCount(Long flashPromotionId, Long flashPromotionSessionId) {
        SmsFlashPromotionProductRelationExample example = new SmsFlashPromotionProductRelationExample();
        example.createCriteria()
                .andFlashPromotionIdEqualTo(flashPromotionId)
                .andFlashPromotionSessionIdEqualTo(flashPromotionSessionId);
        return relationMapper.countByExample(example);
    }
}
