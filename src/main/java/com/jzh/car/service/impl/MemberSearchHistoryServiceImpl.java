package com.jzh.car.service.impl;

import com.jzh.car.domain.MemberSearchHistory;
import com.jzh.car.model.UmsMember;
import com.jzh.car.repository.MemberSearchHistoryRepository;
import com.jzh.car.service.MemberSearchHistoryService;
import com.jzh.car.service.UmsMemberService;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 用户搜索记录管理Service实现类
 */
@Service
public class MemberSearchHistoryServiceImpl implements MemberSearchHistoryService {

    @Value("${mongo.insert.sqlEnable}")
    private Boolean sqlEnable;
    @Resource
    private MemberSearchHistoryRepository memberSearchHistoryRepository;
    @Resource
    private UmsMemberService memberService;

    @Override
    public int create(MemberSearchHistory memberSearchHistory) {
        UmsMember member = memberService.getCurrentMember();
        memberSearchHistory.setMemberId(member.getId());
        memberSearchHistory.setId(null);
        memberSearchHistory.setCreateTime(new Date());
        memberSearchHistoryRepository.save(memberSearchHistory);
        return 1;
    }

    /**
     * 批量删除浏览记录
     *
     * @param keyword
     */
    @Override
    public int delete(String keyword) {
        memberSearchHistoryRepository.deleteAllByKeyword(keyword);
        return 1;
    }

    @Override
    public List<MemberSearchHistory> list() {
        UmsMember member = memberService.getCurrentMember();
        return memberSearchHistoryRepository.findByMemberIdOrderByCreateTimeDesc(member.getId());
    }

    @Override
    public void clear() {
        UmsMember member = memberService.getCurrentMember();
        memberSearchHistoryRepository.deleteAllByMemberId(member.getId());
    }
}
