package com.jzh.car.mapper;

import com.jzh.car.model.PmsBrand;
import com.jzh.car.model.PmsProduct;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 首页内容管理自定义Dao
 */
public interface HomeMapper {

    /**
     * 获取推荐品牌
     */
    List<PmsBrand> getRecommendBrandList(@Param("offset") Integer offset,@Param("limit") Integer limit);

    /**
     * 获取新品推荐
     */
    List<PmsProduct> getNewProductList(@Param("offset") Integer offset,@Param("limit") Integer limit);
    /**
     * 获取人气推荐
     */
    List<PmsProduct> getHotProductList(@Param("offset") Integer offset,@Param("limit") Integer limit);
}
