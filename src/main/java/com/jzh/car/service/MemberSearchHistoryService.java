package com.jzh.car.service;

import com.jzh.car.domain.MemberSearchHistory;

import java.util.List;

/**
 * 用户搜索记录管理Service
 */
public interface MemberSearchHistoryService {
    /**
     * 生成浏览记录
     */
    int create(MemberSearchHistory memberSearchHistory);

    /**
     * 批量删除浏览记录
     */
    int delete(String keyword);

    /**
     * 分页获取用户搜索历史记录
     */
    List<MemberSearchHistory> list();

    /**
     * 清空浏览记录
     */
    void clear();
}
