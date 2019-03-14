package com.no1.data.service;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.Stock;
import com.no1.data.entity.StockItems;

import java.util.List;
import java.util.Map;

public interface StockService {
    /**
     * 获取新股申购数据，分页，排序
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序的字段
     * @param sortOrder 排序方式
     * @return
     */
    public PageInfo<Stock> findByPage(int currentPage, int pageSize,String sortValue,String sortOrder);

    /**
     * 按新股代码查询新股明细
     * @param stockCode 新股代码
     * @return
     */
    public StockItems findStockItems(String stockCode);

    /**
     * 按日期查询当前日期内的新股申购情况
     * @param date 某一日期
     * @return
     */
    public Map<String,List<Stock>> findByTime(String date);
}
