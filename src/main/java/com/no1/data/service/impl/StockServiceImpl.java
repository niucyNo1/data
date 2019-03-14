package com.no1.data.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.data.entity.IssueStatus;
import com.no1.data.entity.Stock;
import com.no1.data.entity.StockItems;
import com.no1.data.mapper.StockMapper;
import com.no1.data.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.MathContext;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StockServiceImpl implements StockService {

    @Autowired
    private StockMapper stockMapper;

    @Override
    public StockItems findStockItems(String stockCode) {
        return stockMapper.findItems(stockCode);
    }

    @Override
    public Map<String,List<Stock>> findByTime(String date) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date1 = null;
        try {
            date1 = sdf.parse(date);//将字符串转换为日期格式
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Map map = new HashMap();
        Map map1 = new HashMap();

        map.put("puchaseDate",date1);
        map1.put("puchaseDate",stockMapper.findByTime(map));//查询申购日期为date时的新股申购记录

        map.put("puchaseDate",null);
        map.put("datePublicationWinningNumber",date1);
        map1.put("datePublicationWinningNumber",stockMapper.findByTime(map));//查询中签号公布日期为date时的新股申购记录

        map.put("datePublicationWinningNumber",null);
        map.put("thawDate",date1);
        map1.put("thawDate",stockMapper.findByTime(map));//查询解冻日期为date时的新股申购记录

        map.put("thawDate",null);
        map.put("listingDate",date1);
        map1.put("listingDate",stockMapper.findByTime(map));//查询上市日期为date时的新股申购记录

        map.put("listingDate",null);
        map.put("announcementDateOnlineSigningRate",date1);
        map1.put("announcementDateOnlineSigningRate",stockMapper.findByTime(map));//查询中签率公布日期为date时的新股申购记录
        return map1;
    }

    @Override
    public PageInfo<Stock> findByPage(int currentPage, int pageSize,String sortValue,String sortOrder) {
        //设置分页信息，分别是当前页数和每页显示的总记录数【记住：必须在mapper接口中的方法执行之前设置该分页信息】
        PageHelper.startPage(currentPage,pageSize);
        Map<String,String> map = new HashMap();
        map.put("sortValue",sortValue);
        map.put("sortOrder",sortOrder);
        List<Stock> stockList = stockMapper.findByPage(map);
        for (Stock stock:stockList) {
            StockItems stockItems=stockMapper.findItems(stock.getStockCode());
            stock.setStockItems(stockItems);
        }
        PageInfo<Stock> pageInfo = new PageInfo<>(stockList);
        return pageInfo;
    }
}
