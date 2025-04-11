package com.jzh.car.service;

import com.jzh.car.model.UmsMember;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户管理Service
 */
public interface UmsMemberService {
    /**
     * 根据用户名获取用户
     */
    UmsMember getByUsername(String username);

    /**
     * 用户注册
     */
    @Transactional
    void register(String username, String password, String telephone, String authCode);

    /**
     * 生成验证码
     */
    String generateAuthCode(String telephone);

    /**
     * 修改密码
     */
    @Transactional
    void updatePassword(String telephone, String password, String authCode);

    /**
     * 获取当前登录用户
     */
    UmsMember getCurrentMember();

    /**
     * 获取用户信息
     */
    UserDetails loadUserByUsername(String username);

    /**
     * 登录后获取token
     */
    String login(String username, String password);

    /**
     * 刷新token
     */
    String refreshToken(String token);
}
