package com.jzh.car.model;

import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.math.BigDecimal;

public class PmsProduct implements Serializable {
    private Long id;

    private Long brandId;

    private Long productCategoryId;

    private Long productAttributeCategoryId;

    private String name;

    private String pic;

    @ApiModelProperty(value = "删除状态：0->未删除；1->已删除")
    private Integer deleteStatus;

    @ApiModelProperty(value = "上架状态：0->下架；1->上架")
    private Integer publishStatus;

    @ApiModelProperty(value = "新品状态:0->不是新品；1->新品")
    private Integer newStatus;

    @ApiModelProperty(value = "推荐状态；0->不推荐；1->推荐")
    private Integer recommandStatus;

    @ApiModelProperty(value = "审核状态：0->未审核；1->审核通过")
    private Integer verifyStatus;

    @ApiModelProperty(value = "排序")
    private Integer sort;

    private BigDecimal price;

    @ApiModelProperty(value = "副标题")
    private String subTitle;

    @ApiModelProperty(value = "单位")
    private String unit;

    @ApiModelProperty(value = "汽车重量，默认为克")
    private BigDecimal weight;

    @ApiModelProperty(value = "是否为预告汽车：0->不是；1->是")
    private Integer previewStatus;

    private String keywords;

    private String note;

    @ApiModelProperty(value = "画册图片，连产品图片限制为5张，以逗号分割")
    private String albumPics;

    private String detailTitle;

    @ApiModelProperty(value = "品牌名称")
    private String brandName;

    @ApiModelProperty(value = "汽车分类名称")
    private String productCategoryName;

    @ApiModelProperty(value = "汽车描述")
    private String description;

    private String detailDesc;

    @ApiModelProperty(value = "产品详情网页内容")
    private String detailHtml;

    @ApiModelProperty(value = "移动端网页详情")
    private String detailMobileHtml;

    private static final long serialVersionUID = 1L;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getBrandId() {
        return brandId;
    }

    public void setBrandId(Long brandId) {
        this.brandId = brandId;
    }

    public Long getProductCategoryId() {
        return productCategoryId;
    }

    public void setProductCategoryId(Long productCategoryId) {
        this.productCategoryId = productCategoryId;
    }

    public Long getProductAttributeCategoryId() {
        return productAttributeCategoryId;
    }

    public void setProductAttributeCategoryId(Long productAttributeCategoryId) {
        this.productAttributeCategoryId = productAttributeCategoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getDeleteStatus() {
        return deleteStatus;
    }

    public void setDeleteStatus(Integer deleteStatus) {
        this.deleteStatus = deleteStatus;
    }

    public Integer getPublishStatus() {
        return publishStatus;
    }

    public void setPublishStatus(Integer publishStatus) {
        this.publishStatus = publishStatus;
    }

    public Integer getNewStatus() {
        return newStatus;
    }

    public void setNewStatus(Integer newStatus) {
        this.newStatus = newStatus;
    }

    public Integer getRecommandStatus() {
        return recommandStatus;
    }

    public void setRecommandStatus(Integer recommandStatus) {
        this.recommandStatus = recommandStatus;
    }

    public Integer getVerifyStatus() {
        return verifyStatus;
    }

    public void setVerifyStatus(Integer verifyStatus) {
        this.verifyStatus = verifyStatus;
    }

    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }
    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public Integer getPreviewStatus() {
        return previewStatus;
    }

    public void setPreviewStatus(Integer previewStatus) {
        this.previewStatus = previewStatus;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getAlbumPics() {
        return albumPics;
    }

    public void setAlbumPics(String albumPics) {
        this.albumPics = albumPics;
    }

    public String getDetailTitle() {
        return detailTitle;
    }

    public void setDetailTitle(String detailTitle) {
        this.detailTitle = detailTitle;
    }

    public String getBrandName() {
        return brandName;
    }

    public void setBrandName(String brandName) {
        this.brandName = brandName;
    }

    public String getProductCategoryName() {
        return productCategoryName;
    }

    public void setProductCategoryName(String productCategoryName) {
        this.productCategoryName = productCategoryName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetailDesc() {
        return detailDesc;
    }

    public void setDetailDesc(String detailDesc) {
        this.detailDesc = detailDesc;
    }

    public String getDetailHtml() {
        return detailHtml;
    }

    public void setDetailHtml(String detailHtml) {
        this.detailHtml = detailHtml;
    }

    public String getDetailMobileHtml() {
        return detailMobileHtml;
    }

    public void setDetailMobileHtml(String detailMobileHtml) {
        this.detailMobileHtml = detailMobileHtml;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(" [");
        sb.append("Hash = ").append(hashCode());
        sb.append(", id=").append(id);
        sb.append(", brandId=").append(brandId);
        sb.append(", productCategoryId=").append(productCategoryId);
        sb.append(", productAttributeCategoryId=").append(productAttributeCategoryId);
        sb.append(", name=").append(name);
        sb.append(", pic=").append(pic);
        sb.append(", deleteStatus=").append(deleteStatus);
        sb.append(", publishStatus=").append(publishStatus);
        sb.append(", newStatus=").append(newStatus);
        sb.append(", recommandStatus=").append(recommandStatus);
        sb.append(", verifyStatus=").append(verifyStatus);
        sb.append(", price=").append(price);
        sb.append(", subTitle=").append(subTitle);
        sb.append(", unit=").append(unit);
        sb.append(", weight=").append(weight);
        sb.append(", previewStatus=").append(previewStatus);
        sb.append(", keywords=").append(keywords);
        sb.append(", note=").append(note);
        sb.append(", albumPics=").append(albumPics);
        sb.append(", detailTitle=").append(detailTitle);
        sb.append(", brandName=").append(brandName);
        sb.append(", productCategoryName=").append(productCategoryName);
        sb.append(", description=").append(description);
        sb.append(", detailDesc=").append(detailDesc);
        sb.append(", detailHtml=").append(detailHtml);
        sb.append(", detailMobileHtml=").append(detailMobileHtml);
        sb.append(", serialVersionUID=").append(serialVersionUID);
        sb.append("]");
        return sb.toString();
    }
}