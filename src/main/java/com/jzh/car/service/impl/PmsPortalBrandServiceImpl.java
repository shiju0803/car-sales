package com.jzh.car.service.impl;

import com.github.pagehelper.PageHelper;
import com.jzh.car.api.CommonPage;
import com.jzh.car.mapper.HomeMapper;
import com.jzh.car.mapper.PmsBrandMapper;
import com.jzh.car.mapper.PmsProductMapper;
import com.jzh.car.model.PmsBrand;
import com.jzh.car.model.PmsProduct;
import com.jzh.car.model.PmsProductExample;
import com.jzh.car.service.PmsPortalBrandService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 前台品牌管理Service实现类
 */
@Service
public class PmsPortalBrandServiceImpl implements PmsPortalBrandService {
    @Resource
    private HomeMapper homeMapper;
    @Resource
    private PmsBrandMapper brandMapper;
    @Resource
    private PmsProductMapper productMapper;

    @Override
    public List<PmsBrand> recommendList(Integer pageNum, Integer pageSize) {
        int offset = (pageNum - 1) * pageSize;
        return homeMapper.getRecommendBrandList(offset, pageSize);
    }

    @Override
    public PmsBrand detail(Long brandId) {
        return brandMapper.selectByPrimaryKey(brandId);
    }

    @Override
    public CommonPage<PmsProduct> productList(Long brandId, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        PmsProductExample example = new PmsProductExample();
        example.createCriteria().andDeleteStatusEqualTo(0)
                .andPublishStatusEqualTo(1)
                .andBrandIdEqualTo(brandId);
        List<PmsProduct> productList = productMapper.selectByExample(example);
        return CommonPage.restPage(productList);
    }
}
