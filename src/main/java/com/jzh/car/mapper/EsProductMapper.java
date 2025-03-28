package com.jzh.car.mapper;

import com.jzh.car.domain.EsProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 搜索商品管理自定义Dao
 */
public interface EsProductMapper {
    /**
     * 获取指定ID的搜索商品
     */
    List<EsProduct> getAllEsProductList(@Param("id") Long id);
}
