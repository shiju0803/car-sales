package com.jzh.car.repository;

import com.jzh.car.domain.MemberProductCollection;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * 会员商品收藏Repository
 */
public interface MemberProductCollectionRepository extends MongoRepository<MemberProductCollection, String> {
    /**
     * 根据会员ID和商品ID查找记录
     */
    MemberProductCollection findByMemberIdAndProductId(Long memberId, Long productId);

    /**
     * 根据会员ID和商品ID删除记录
     */
    int deleteByMemberIdAndProductId(Long memberId, Long productId);

    /**
     * 根据会员ID分页查询记录
     */
    Page<MemberProductCollection> findByMemberId(Long memberId, Pageable pageable);

    /**
     * 根据会员ID删除记录
     */
    void deleteAllByMemberId(Long memberId);
}
