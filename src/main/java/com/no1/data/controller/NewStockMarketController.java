package com.no1.data.controller;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.IndustrySection;
import com.no1.data.entity.NewStockMarket;
import com.no1.data.service.NewStockMarketService;
import com.no1.data.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class NewStockMarketController {
    @Autowired
    private NewStockMarketService newStockMarketService;

    /**
     * 获取新股上会数据，分页，排序
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序的字段
     * @param sortOrder 排序方式
     * @return
     */
    @RequestMapping("/findNewStockMarket")
    @ResponseBody
    public PageInfo findNewStockMarket(@RequestParam("currentPage") Integer currentPage,
                                     @RequestParam("pageSize") Integer pageSize,
                                     @RequestParam("sortName")String sortValue,
                                     @RequestParam("sortOrder")String sortOrder,Model model){
        //将排序字段由驼峰格式转换为下划线格式
        sortValue = StringUtils.underscoreName(sortValue);
        PageInfo<NewStockMarket> pageInfo = newStockMarketService.findItemByPage(currentPage, pageSize,sortValue,sortOrder);
        return pageInfo;
    }
}
