package com.jzh.car.service;

import com.jzh.car.dto.OssCallbackResult;
import com.jzh.car.dto.OssPolicyResult;

import javax.servlet.http.HttpServletRequest;

/**
 * Oss对象存储管理Service
 */
public interface OssService {
    /**
     * Oss上传策略生成
     */
    OssPolicyResult policy();
    /**
     * Oss上传成功回调
     */
    OssCallbackResult callback(HttpServletRequest request);
}
