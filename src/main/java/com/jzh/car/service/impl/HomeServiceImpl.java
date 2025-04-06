package com.jzh.car.service.impl;

import com.github.pagehelper.PageHelper;
import com.jzh.car.domain.HomeContentResult;
import com.jzh.car.mapper.HomeMapper;
import com.jzh.car.mapper.PmsProductCategoryMapper;
import com.jzh.car.mapper.PmsProductMapper;
import com.jzh.car.mapper.SmsHomeAdvertiseMapper;
import com.jzh.car.model.*;
import com.jzh.car.service.HomeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 首页内容管理Service实现类
 */
@Service
public class HomeServiceImpl implements HomeService {
    @Resource
    private SmsHomeAdvertiseMapper advertiseMapper;
    @Resource
    private HomeMapper homeMapper;
    @Resource
    private PmsProductMapper productMapper;
    @Resource
    private PmsProductCategoryMapper productCategoryMapper;

    @Override
    public HomeContentResult content() {
        HomeContentResult result = new HomeContentResult();
        //获取首页广告
        result.setAdvertiseList(getHomeAdvertiseList());
        //获取推荐品牌
        result.setBrandList(homeMapper.getRecommendBrandList(0, 6));
        //获取新品推荐
        result.setNewProductList(homeMapper.getNewProductList(0, 4));
        //获取人气推荐
        result.setHotProductList(homeMapper.getHotProductList(0, 4));
        return result;
    }

    @Override
    public List<PmsProduct> recommendProductList(Integer pageSize, Integer pageNum) {
        // TODO: 2019/1/29 暂时默认推荐所有汽车
        PageHelper.startPage(pageNum, pageSize);
        PmsProductExample example = new PmsProductExample();
        example.createCriteria()
                .andDeleteStatusEqualTo(0)
                .andPublishStatusEqualTo(1);
        return productMapper.selectByExample(example);
    }

    @Override
    public List<PmsProductCategory> getProductCateList(Long parentId) {
        PmsProductCategoryExample example = new PmsProductCategoryExample();
        example.createCriteria()
                .andShowStatusEqualTo(1)
                .andParentIdEqualTo(parentId);
        example.setOrderByClause("sort desc");
        return productCategoryMapper.selectByExample(example);
    }

    @Override
    public List<PmsProduct> hotProductList(Integer pageNum, Integer pageSize) {
        int offset = pageSize * (pageNum - 1);
        return homeMapper.getHotProductList(offset, pageSize);
    }

    @Override
    public List<PmsProduct> newProductList(Integer pageNum, Integer pageSize) {
        int offset = pageSize * (pageNum - 1);
        return homeMapper.getNewProductList(offset, pageSize);
    }

    private List<SmsHomeAdvertise> getHomeAdvertiseList() {
        SmsHomeAdvertiseExample example = new SmsHomeAdvertiseExample();
        example.createCriteria().andTypeEqualTo(1).andStatusEqualTo(1);
        example.setOrderByClause("sort desc");
        return advertiseMapper.selectByExample(example);
    }
}
