package com.jzh.car.service;

import com.jzh.car.model.PmsComment;

import java.util.List;

/**
 * 汽车评价管理Service
 */
public interface MemberCommentService {
    /**
     * 创建评价
     */
    int create(PmsComment pmsComment);

    /**
     * 分页查询评价
     */
    List<PmsComment> list(Integer pageNum, Integer pageSize, Integer sort, Long productId);

    /**
     * 批量删除评价
     */
    int deleteByIds(List<Long> ids);

    /**
     * 根据id删除评价
     */
    int deleteById(Long id);

    /**
     * 评论点赞或取消
     */
    int upOrCancel(Long id, Integer type);
}
