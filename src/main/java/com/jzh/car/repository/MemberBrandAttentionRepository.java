package com.jzh.car.repository;

import com.jzh.car.domain.MemberBrandAttention;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * 用户品牌关注Repository
 */
public interface MemberBrandAttentionRepository extends MongoRepository<MemberBrandAttention, String> {
    /**
     * 根据用户ID和品牌ID查找记录
     */
    MemberBrandAttention findByMemberIdAndBrandId(Long memberId, Long brandId);

    /**
     * 根据用户ID和品牌ID删除记录
     */
    int deleteByMemberIdAndBrandId(Long memberId, Long brandId);

    /**
     * 根据用户ID分页查找记录
     */
    Page<MemberBrandAttention> findByMemberId(Long memberId, Pageable pageable);

    /**
     * 根据用户ID删除记录
     */
    void deleteAllByMemberId(Long memberId);
}
