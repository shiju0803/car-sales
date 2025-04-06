package com.jzh.car.service;

import com.jzh.car.model.UmsMember;

/**
 * 用户信息缓存业务类
 */
public interface UmsMemberCacheService {
    /**
     * 删除用户用户缓存
     */
    void delMember(Long memberId);

    /**
     * 获取用户用户缓存
     */
    UmsMember getMember(String username);

    /**
     * 设置用户用户缓存
     */
    void setMember(UmsMember member);

    /**
     * 设置验证码
     */
    void setAuthCode(String telephone, String authCode);

    /**
     * 获取验证码
     */
    String getAuthCode(String telephone);
}
