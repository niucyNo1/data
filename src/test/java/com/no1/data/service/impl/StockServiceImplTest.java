package com.no1.data.service.impl;

import com.no1.data.BaseTest;
import com.no1.data.entity.Stock;
import com.no1.data.mapper.StockMapper;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

public class StockServiceImplTest extends BaseTest {
    @Resource
    private StockMapper stockMapper;

    @Test
    public void findByPage() {
        Map map = new HashMap();
        map.put("stockValue",null);
        map.put("stockOrder",null);
        List<Stock> stockList = stockMapper.findByPage(map);
        for (Stock s:stockList) {
            System.out.println(s.getStockName()+":"+s.getListingDate());
        }
    }
}