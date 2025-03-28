package com.jzh.car.service.impl;

import com.jzh.car.mapper.OmsCompanyAddressMapper;
import com.jzh.car.model.OmsCompanyAddress;
import com.jzh.car.model.OmsCompanyAddressExample;
import com.jzh.car.service.OmsCompanyAddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 收货地址管理Service实现类
 */
@Service
public class OmsCompanyAddressServiceImpl implements OmsCompanyAddressService {
    @Resource
    private OmsCompanyAddressMapper companyAddressMapper;
    @Override
    public List<OmsCompanyAddress> list() {
        return companyAddressMapper.selectByExample(new OmsCompanyAddressExample());
    }
}
