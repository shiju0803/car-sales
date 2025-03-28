package com.jzh.car.service.impl;

import cn.hutool.core.util.StrUtil;
import com.jzh.car.mapper.PmsSkuStockMapper;
import com.jzh.car.model.PmsSkuStock;
import com.jzh.car.model.PmsSkuStockExample;
import com.jzh.car.service.PmsSkuStockService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 商品SKU库存管理Service实现类
 */
@Service
public class PmsSkuStockServiceImpl implements PmsSkuStockService {
    @Resource
    private com.jzh.car.mapper.PmsSkuStockMapper skuStockMapper;
    @Resource
    private PmsSkuStockMapper skuStockDao;

    @Override
    public List<PmsSkuStock> getList(Long pid, String keyword) {
        PmsSkuStockExample example = new PmsSkuStockExample();
        PmsSkuStockExample.Criteria criteria = example.createCriteria().andProductIdEqualTo(pid);
        if (!StrUtil.isEmpty(keyword)) {
            criteria.andSkuCodeLike("%" + keyword + "%");
        }
        return skuStockMapper.selectByExample(example);
    }

    @Override
    public int update(Long pid, List<PmsSkuStock> skuStockList) {
        List<PmsSkuStock> filterSkuList = skuStockList.stream()
                .filter(item -> pid.equals(item.getProductId()))
                .collect(Collectors.toList());
        return skuStockDao.replaceList(filterSkuList);
    }
}
