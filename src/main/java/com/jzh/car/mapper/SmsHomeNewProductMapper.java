package com.jzh.car.mapper;

import com.jzh.car.model.SmsHomeNewProduct;
import com.jzh.car.model.SmsHomeNewProductExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface SmsHomeNewProductMapper {
    long countByExample(SmsHomeNewProductExample example);

    int deleteByExample(SmsHomeNewProductExample example);

    int deleteByPrimaryKey(Long id);

    int insert(SmsHomeNewProduct record);

    int insertSelective(SmsHomeNewProduct record);

    List<SmsHomeNewProduct> selectByExample(SmsHomeNewProductExample example);

    SmsHomeNewProduct selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") SmsHomeNewProduct record, @Param("example") SmsHomeNewProductExample example);

    int updateByExample(@Param("record") SmsHomeNewProduct record, @Param("example") SmsHomeNewProductExample example);

    int updateByPrimaryKeySelective(SmsHomeNewProduct record);

    int updateByPrimaryKey(SmsHomeNewProduct record);
}