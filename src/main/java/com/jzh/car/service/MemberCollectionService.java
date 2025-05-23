package com.jzh.car.service;

import com.jzh.car.domain.MemberProductCollection;
import org.springframework.data.domain.Page;

/**
 * 用户汽车收藏管理Service
 */
public interface MemberCollectionService {
    /**
     * 添加收藏
     */
    int add(MemberProductCollection productCollection);

    /**
     * 删除收藏
     */
    int delete(Long productId);

    /**
     * 分页查询收藏
     */
    Page<MemberProductCollection> list(Integer pageNum, Integer pageSize);

    /**
     * 查看收藏详情
     */
    MemberProductCollection detail(Long productId);

    /**
     * 清空收藏
     */
    void clear();
}
