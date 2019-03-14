package com.no1.data.controller;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.github.pagehelper.PageInfo;
import com.no1.data.entity.IndustrySection;
import com.no1.data.entity.ResearchReport;
import com.no1.data.service.IndustrySectionService;
import com.no1.data.service.ResearchReportService;
import com.no1.data.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class IndustrySectionController {
    @Autowired
    private IndustrySectionService industrySectionService;
    @Autowired
    private ResearchReportService researchReportService;

    /**
     * 获取行业板块数据，分页，排序
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sortValue 排序的字段
     * @param sortOrder 排序方式
     * @return
     */
    @RequestMapping(value = "/findIndustrySection")
    @ResponseBody
    public PageInfo findByPage(@RequestParam("currentPage") Integer currentPage,
                             @RequestParam("pageSize") Integer pageSize,
                             @RequestParam("sortName")String sortValue,
                             @RequestParam("sortOrder")String sortOrder) {
        //将排序字段由驼峰格式转换为下划线格式
        sortValue = StringUtils.underscoreName(sortValue);
        PageInfo<IndustrySection> pageInfo = industrySectionService.findItemByPage(currentPage, pageSize,sortValue,sortOrder);
        return pageInfo;
    }


    /**
     * 查询行业板块研报
     * @param currentPage 当前页
     * @param sectionId 行业ID
     * @param sectionName 板块名称
     * @param model
     * @return 跳转的页面url
     */
    @RequestMapping("/findBySectionId")
    public String findBySectionId(@RequestParam("currentPage") Integer currentPage,
                                  @RequestParam("sectionId") int sectionId,
                                  @RequestParam("sectionName") String sectionName,Model model){
        if(currentPage==null){
            currentPage=1;
        }
        int pageSize=10;
        PageInfo<ResearchReport> pageInfo = researchReportService.findByIndustry(currentPage,pageSize,sectionId);
        model.addAttribute("pageInfo", pageInfo);
        model.addAttribute("sectionId", sectionId);
        model.addAttribute("sectionName", sectionName);
        return "/researchReport";
    }

}
