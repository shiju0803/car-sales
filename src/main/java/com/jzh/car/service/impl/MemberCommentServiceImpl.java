package com.jzh.car.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.github.pagehelper.PageHelper;
import com.jzh.car.exception.ApiException;
import com.jzh.car.mapper.PmsCommentMapper;
import com.jzh.car.mapper.PmsCommentReplayMapper;
import com.jzh.car.mapper.PmsProductMapper;
import com.jzh.car.model.*;
import com.jzh.car.service.MemberCommentService;
import com.jzh.car.service.UmsMemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 汽车管理Service实现类
 */
@Service
public class MemberCommentServiceImpl implements MemberCommentService {
    @Resource
    private PmsCommentMapper commentMapper;
    @Resource
    private PmsCommentReplayMapper commentReplayMapper;
    @Resource
    private UmsMemberService memberService;
    @Resource
    private PmsProductMapper productMapper;

    @Override
    public int create(PmsComment pmsComment) {
        int count;
        UmsMember member = memberService.getCurrentMember();
        PmsProduct pmsProduct = productMapper.selectByPrimaryKey(pmsComment.getProductId());
        if (ObjectUtil.isNull(pmsProduct)) {
            throw new ApiException("商品不存在");
        }
        //创建评价
        pmsComment.setMemberId(member.getId());
        pmsComment.setMemberNickName(member.getUsername());
        pmsComment.setMemberIcon(member.getIcon());
        pmsComment.setShowStatus(1);
        pmsComment.setProductName(pmsProduct.getName());
        pmsComment.setStar(0);
        pmsComment.setReplayCount(0);
        pmsComment.setCreateTime(new Date());
        pmsComment.setReadCount(0);
        commentMapper.insert(pmsComment);
        count = 1;
        return count;
    }
    @Override
    public List<PmsComment> list(Integer pageNum, Integer pageSize, Integer sort, Long productId) {
        PageHelper.startPage(pageNum, pageSize);
        PmsCommentExample commentExample = new PmsCommentExample();
        //0-> 按时间， 1-> 按热度
        if (ObjectUtil.equal(sort, 0) || ObjectUtil.isNull(sort)) {
            commentExample.setOrderByClause("id desc");
        }
        if (ObjectUtil.equal(sort, 1)) {
            commentExample.setOrderByClause("read_count desc");
        }
        PmsCommentExample.Criteria criteria = commentExample.createCriteria();
        criteria.andProductIdEqualTo(productId);
        return commentMapper.selectByExampleWithBLOBs(commentExample);
    }

    /**
     * 批量删除评价
     *
     * @param ids
     */
    @Override
    public int deleteByIds(List<Long> ids) {
        PmsCommentExample commentExample = new PmsCommentExample();
        commentExample.createCriteria().andIdIn(ids);
        commentMapper.deleteByExample(commentExample);
        PmsCommentReplayExample commentReplayExample = new PmsCommentReplayExample();
        commentReplayExample.createCriteria().andCommentIdIn(ids);
        return commentReplayMapper.deleteByExample(commentReplayExample);
    }

    /**
     * 根据id删除评价
     *
     * @param id
     */
    @Override
    public int deleteById(Long id) {
        commentMapper.deleteByPrimaryKey(id);
        PmsCommentReplayExample commentReplayExample = new PmsCommentReplayExample();
        commentReplayExample.createCriteria().andCommentIdEqualTo(id);
        return commentReplayMapper.deleteByExample(commentReplayExample);
    }

    /**
     * 添加汽车评价回复
     *
     * @param commentReplay
     */
    @Override
    public int replay(PmsCommentReplay commentReplay) {
        int count;
        UmsMember member = memberService.getCurrentMember();
        PmsComment pmsComment = commentMapper.selectByPrimaryKey(commentReplay.getCommentId());
        if (ObjectUtil.isNull(pmsComment)) {
            throw new ApiException("评论不存在");
        }
        //创建评价
        commentReplay.setMemberNickName(member.getNickname());
        commentReplay.setMemberIcon(member.getIcon());
        commentReplay.setCreateTime(new Date());
        commentReplay.setType(0);
        commentReplayMapper.insert(commentReplay);
        count = 1;
        return count;
    }

    /**
     * 评论点赞
     *
     * @param id
     * @param type 1-点赞；2-取消点赞
     */
    @Override
    public int upOrCancel(Long id, Integer type) {
        int count;
        UmsMember member = memberService.getCurrentMember();
        PmsComment pmsComment = commentMapper.selectByPrimaryKey(id);
        if (ObjectUtil.isNull(pmsComment)) {
            throw new ApiException("评论不存在");
        }

        if (ObjectUtil.equal(type, 1)) {
            // 如果是自己的评论
            if (ObjectUtil.equal(pmsComment.getMemberId(), member.getId())) {
                pmsComment.setUpSelf(1);
            }
            pmsComment.setReadCount(pmsComment.getReadCount() + 1);
        }
        if (ObjectUtil.equal(type, 2)) {
            // 如果是自己的评论
            if (ObjectUtil.equal(pmsComment.getMemberId(), member.getId())) {
                pmsComment.setUpSelf(0);
            }
            pmsComment.setReadCount(pmsComment.getReadCount() - 1);
        }
        commentMapper.updateByPrimaryKey(pmsComment);
        count = 1;
        return count;
    }
}
