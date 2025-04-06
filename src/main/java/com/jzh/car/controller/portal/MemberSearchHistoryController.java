package com.jzh.car.controller.portal;

import com.jzh.car.api.CommonResult;
import com.jzh.car.domain.MemberSearchHistory;
import com.jzh.car.service.MemberSearchHistoryService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户汽车搜素记录管理Controller
 */
@Controller
@Api(tags = "MemberSearchHistoryController")
@Tag(name = "MemberSearchHistoryController", description = "用户汽车浏览记录管理")
@RequestMapping("/portal/member/SearchHistory")
public class MemberSearchHistoryController {

    @Resource
    private MemberSearchHistoryService memberSearchHistoryService;

    @ApiOperation("创建浏览记录")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestBody MemberSearchHistory memberSearchHistory) {
        int count = memberSearchHistoryService.create(memberSearchHistory);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("删除搜索记录")
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult delete(@RequestParam("keyword") String keyword) {
        int count = memberSearchHistoryService.delete(keyword);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("清空浏览记录")
    @RequestMapping(value = "/clear", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult clear() {
        memberSearchHistoryService.clear();
        return CommonResult.success(null);
    }

    @ApiOperation("分页获取浏览记录")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<List<MemberSearchHistory>> list() {
        List<MemberSearchHistory> list = memberSearchHistoryService.list();
        return CommonResult.success(list);
    }
}
