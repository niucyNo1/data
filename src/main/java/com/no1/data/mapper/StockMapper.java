package com.no1.data.mapper;

import com.no1.data.entity.Stock;
import com.no1.data.entity.StockItems;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface StockMapper {
    /**
     * 排序查询新股申购数据
     * @param map
     * @return
     */
    public List<Stock> findByPage(Map map);

    /**
     * 按新股代码查询新股明细
     * @param stockCode 新股代码
     * @return
     */
    public StockItems findItems(@Param("stockCode") String stockCode);

    /**
     * 按日期查询新股申购数据
     * @param map
     * @return
     */
    public List<Stock> findByTime(Map map);
}
