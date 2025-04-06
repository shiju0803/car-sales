package com.jzh.car.repository;

import com.jzh.car.domain.MemberSearchHistory;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * 用户搜索历史Repository
 */
public interface MemberSearchHistoryRepository extends MongoRepository<MemberSearchHistory, String> {
    /**
     * 根据用户ID分页查找记录
     */
    List<MemberSearchHistory> findByMemberIdOrderByCreateTimeDesc(Long memberId);

    /**
     * 根据用户ID删除记录
     */
    void deleteAllByMemberId(Long memberId);

    /**
     * 根据搜索关键字删除记录
     */
    void deleteAllByKeyword(String keyword);
}
