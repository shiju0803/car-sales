package com.jzh.car.controller.admin;

import com.jzh.car.api.CommonPage;
import com.jzh.car.api.CommonResult;
import com.jzh.car.dto.PmsProductParam;
import com.jzh.car.dto.PmsProductQueryParam;
import com.jzh.car.dto.PmsProductResult;
import com.jzh.car.model.PmsProduct;
import com.jzh.car.service.PmsProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * 汽车管理Controller
 */
@Controller
@Api(tags = "PmsProductController")
@Tag(name = "PmsProductController", description = "汽车管理")
@RequestMapping("/product")
public class PmsProductController {

    @Resource
    private PmsProductService productService;

    @ApiOperation("创建汽车")
    @RequestMapping(value = "/create", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult create(@RequestBody PmsProductParam productParam) {
        int count = productService.create(productParam);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("根据汽车id获取汽车编辑信息")
    @RequestMapping(value = "/updateInfo/{id}", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<PmsProductResult> getUpdateInfo(@PathVariable Long id) {
        PmsProductResult productResult = productService.getUpdateInfo(id);
        return CommonResult.success(productResult);
    }

    @ApiOperation("更新汽车")
    @RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult update(@PathVariable Long id, @RequestBody PmsProductParam productParam) {
        int count = productService.update(id, productParam);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("查询汽车")
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<CommonPage<PmsProduct>> getList(PmsProductQueryParam productQueryParam,
                                                        @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
                                                        @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum) {
        List<PmsProduct> productList = productService.list(productQueryParam, pageSize, pageNum);
        return CommonResult.success(CommonPage.restPage(productList));
    }

    @ApiOperation("根据汽车名称或货号模糊查询")
    @RequestMapping(value = "/simpleList", method = RequestMethod.GET)
    @ResponseBody
    public CommonResult<List<PmsProduct>> getList(String keyword) {
        List<PmsProduct> productList = productService.list(keyword);
        return CommonResult.success(productList);
    }

    @ApiOperation("批量上下架汽车")
    @RequestMapping(value = "/update/publishStatus", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updatePublishStatus(@RequestParam("ids") List<Long> ids,
                                            @RequestParam("publishStatus") Integer publishStatus) {
        int count = productService.updatePublishStatus(ids, publishStatus);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("批量推荐汽车")
    @RequestMapping(value = "/update/recommendStatus", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateRecommendStatus(@RequestParam("ids") List<Long> ids,
                                              @RequestParam("recommendStatus") Integer recommendStatus) {
        int count = productService.updateRecommendStatus(ids, recommendStatus);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("批量设为新品")
    @RequestMapping(value = "/update/newStatus", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateNewStatus(@RequestParam("ids") List<Long> ids,
                                        @RequestParam("newStatus") Integer newStatus) {
        int count = productService.updateNewStatus(ids, newStatus);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }

    @ApiOperation("批量修改删除状态")
    @RequestMapping(value = "/update/deleteStatus", method = RequestMethod.POST)
    @ResponseBody
    public CommonResult updateDeleteStatus(@RequestParam("ids") List<Long> ids,
                                           @RequestParam("deleteStatus") Integer deleteStatus) {
        int count = productService.updateDeleteStatus(ids, deleteStatus);
        if (count > 0) {
            return CommonResult.success(count);
        } else {
            return CommonResult.failed();
        }
    }
}
