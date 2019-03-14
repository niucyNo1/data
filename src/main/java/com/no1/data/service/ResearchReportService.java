package com.no1.data.service;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.ResearchReport;

import java.util.List;

public interface ResearchReportService {
    /**
     * 分页查询某行业研报
     * @param currentPage 当前页
     * @param pageSize 每页记录数
     * @param sectionId 板块ID
     * @return
     */
    public PageInfo<ResearchReport> findByIndustry(int currentPage, int pageSize, int sectionId);
}
