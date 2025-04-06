package com.jzh.car.domain;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;

/**
 * 用户搜索历史记录
 */
@Data
@Document
public class MemberSearchHistory {
    @Id
    private String id;
    @Indexed
    private Long memberId;
    private String keyword;
    private Date createTime;
}
