package com.no1.data.service;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.IndustrySection;
import com.no1.data.entity.IndustrySection;
import org.springframework.stereotype.Service;

import java.util.List;

public interface IndustrySectionService {
    /**
     * 查询行业板块（分页，排序）
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序字段
     * @param sortOrder 排序方式
     * @return
     */
    public PageInfo<IndustrySection> findItemByPage(int currentPage, int pageSize,String sortValue,String sortOrder);
}
