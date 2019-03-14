package com.no1.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
    /**
     * 跳转到新股数据解析页面
     * @return
     */
    @RequestMapping("/findAnalysisNewStockData")
    public String findAnalysisNewStockData(){
        return "analysisNewStockData";
    }

    /**
     * 跳转到新股日历页面
     * @return
     */
    @RequestMapping("/findNewStockCalendar")
    public String index(){
        return "newStockCalendar";
    }

    /**
     * 跳转到行业板块页面
     * @return
     */
    @RequestMapping("/industrySection")
    public String industrySection(){
        return "industrySection";
    }

    /**
     * 跳转到新股申购页面
     * @return
     */
    @RequestMapping("/stock")
    public String stock(){
        return "stock";
    }

    /**
     * 跳转到新股上会页面
     * @return
     */
    @RequestMapping("/newStockMarket")
    public String newStockMarket(){
        return "newStockMarket";
    }

    /**
     * 跳转到首页
     * @return
     */
    @RequestMapping("/hello")
    public String hello(){
        return "industrySection";
    }
}
