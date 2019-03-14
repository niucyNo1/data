package com.no1.data.mapper;

import com.no1.data.entity.NewStockMarket;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface NewStockMarketMapper {
    //查询新股上会数据并排序
    public List<NewStockMarket> findAll(Map map);
}
