package com.no1.data.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.no1.data.entity.ResearchReport;
import com.no1.data.mapper.ResearchReportMapper;
import com.no1.data.service.ResearchReportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ResearchReportServiceImpl implements ResearchReportService {

    @Autowired
    private ResearchReportMapper researchReportMapper;
    @Override
    public PageInfo<ResearchReport> findByIndustry(int currentPage, int pageSize,int sectionId) {
        //设置分页信息，分别是当前页数和每页显示的总记录数【记住：必须在mapper接口中的方法执行之前设置该分页信息】
        PageHelper.startPage(currentPage, pageSize);
        List<ResearchReport> researchReportList = researchReportMapper.findByIndustry(sectionId);
        PageInfo<ResearchReport> pageData = new PageInfo<ResearchReport>(researchReportList);
        return pageData;
    }
}
