package com.jzh.car.controller.portal;

import com.jzh.car.api.CommonPage;
import com.jzh.car.api.CommonResult;
import com.jzh.car.model.PmsComment;
import com.jzh.car.service.MemberCommentService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户汽车评价管理Controller
 */
@Controller
@Api(tags = "MemberProductCommentController")
@Tag(name = "MemberProductCommentController", description = "用户评价管理")
@RequestMapping("/portal/member/productComment")
public class MemberProductCommentController {

    @Resource
    private MemberCommentService memberCommentService;

    @ApiOperation("添加汽车评价")
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult add(@RequestBody PmsComment pmsComment) {
        int count = memberCommentService.create(pmsComment);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("添加汽车评价点赞或取消点赞")
    @RequestMapping(value = "/upOrCancel", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult upOrCancel(@RequestParam("id") Long id, @RequestParam("type") Integer type) {
        int count = memberCommentService.upOrCancel(id, type);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("删除汽车评价")
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@PathVariable Long id) {
        int count = memberCommentService.deleteById(id);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("批量删除汽车评价")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(List<Long> ids) {
        int count = memberCommentService.deleteByIds(ids);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("查询评论列表")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<PmsComment>> list(@RequestParam(value = "sort", defaultValue = "1") Integer sort,
                                                                  @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                                                  @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                                                  @RequestParam(value = "productId" ) Long productId) {
        List<PmsComment> page = memberCommentService.list(pageNum, pageSize, sort, productId);
        return CommonResult.success(CommonPage.restPage(page));
    }
}
