package com.no1.data.controller;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.Stock;
import com.no1.data.entity.StockItems;
import com.no1.data.service.StockService;
import com.no1.data.util.StringUtils;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StockController {
    @Autowired
    private StockService stockService;

    /**
     * 获取新股申购数据，分页，排序
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序的字段
     * @param sortOrder 排序方式
     * @return
     */
    @RequestMapping("/findStock")
    @ResponseBody
    public PageInfo findStock(@RequestParam("currentPage") Integer currentPage,
                            @RequestParam("pageSize") Integer pageSize,
                            @RequestParam("sortName")String sortValue,
                            @RequestParam("sortOrder")String sortOrder, Model model){
        sortValue = StringUtils.underscoreName(sortValue);
        PageInfo<Stock> pageInfo = stockService.findByPage(currentPage, pageSize,sortValue,sortOrder);
        return pageInfo;
    }

    /**
     * 按新股代码查询新股明细
     * @param stockCode 新股代码
     * @param model
     * @return 新股明细页面URL
     */
    @RequestMapping("/findItems")
    public String findItems(@RequestParam("stockCode") String stockCode,Model model){
        StockItems stockItems = stockService.findStockItems(stockCode);
        model.addAttribute("stockItems",stockItems);
        return "/stockItems";
    }

    /**
     * 按日期查询当前日期内的新股申购情况
     * @param date
     * @return
     */
    @RequestMapping("/findByTime")
    @ResponseBody
    public Map findByTime(@RequestParam("dates") String date){
        Map<String,Map<String,List<Stock>>> mapOne = new HashMap<>();
        //将日期字符串截取成日期数组
        String[] dates = date.split(",");
        for(int i=0;i<dates.length;i++){
            Map<String,List<Stock>> map = stockService.findByTime(dates[i]);
            mapOne.put("d"+i,map);
        }
        return mapOne;
    }

    /**
     * 按上市日期降序查询最近50条新股申购记录
     * @return
     */
    @RequestMapping("/findByRecent")
    @ResponseBody
    public List<Stock> findByRecent(){
        PageInfo<Stock> pageInfo = stockService.findByPage(1, 50,"listing_date","desc");
        List<Stock> stockList = pageInfo.getList();
        for (Stock s:stockList) {
            s.setFirstDayGain(s.getFirstDayGain().substring(0,s.getFirstDayGain().indexOf("%")));
            s.setTurnoverRate(s.getTurnoverRate().substring(0,s.getTurnoverRate().indexOf("%")));
        }
        return stockList;
    }

}
