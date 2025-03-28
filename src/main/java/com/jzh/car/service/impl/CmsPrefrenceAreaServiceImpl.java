package com.jzh.car.service.impl;

import com.jzh.car.mapper.CmsPrefrenceAreaMapper;
import com.jzh.car.model.CmsPrefrenceArea;
import com.jzh.car.model.CmsPrefrenceAreaExample;
import com.jzh.car.service.CmsPrefrenceAreaService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 商品优选管理Service实现类
 */
@Service
public class CmsPrefrenceAreaServiceImpl implements CmsPrefrenceAreaService {
    @Resource
    private CmsPrefrenceAreaMapper prefrenceAreaMapper;

    @Override
    public List<CmsPrefrenceArea> listAll() {
        return prefrenceAreaMapper.selectByExample(new CmsPrefrenceAreaExample());
    }
}
