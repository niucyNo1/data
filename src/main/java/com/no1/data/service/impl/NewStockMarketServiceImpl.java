package com.no1.data.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.data.entity.NewStockMarket;
import com.no1.data.mapper.NewStockMarketMapper;
import com.no1.data.service.NewStockMarketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class NewStockMarketServiceImpl implements NewStockMarketService {
    @Autowired
    private NewStockMarketMapper newStockMarketMapper;

    @Override
    public PageInfo<NewStockMarket> findItemByPage(int currentPage, int pageSize, String sortValue, String sortOrder) {
        //设置分页信息，分别是当前页数和每页显示的总记录数【记住：必须在mapper接口中的方法执行之前设置该分页信息】
        PageHelper.startPage(currentPage, pageSize);
        Map map = new HashMap();
        map.put("sortValue",sortValue);
        map.put("sortOrder",sortOrder);
        List<NewStockMarket> allItems = newStockMarketMapper.findAll(map);
        PageInfo<NewStockMarket> pageData = new PageInfo<NewStockMarket>(allItems);
        return pageData;
    }
}
