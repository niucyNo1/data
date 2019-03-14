package com.no1.data.service;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.NewStockMarket;

public interface NewStockMarketService {
    /**
     * 获取新股上会数据，分页，排序
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序的字段
     * @param sortOrder 排序方式
     * @return
     */
    public PageInfo<NewStockMarket> findItemByPage(int currentPage, int pageSize, String sortValue, String sortOrder);
}
