package com.no1.data.mapper;

import com.no1.data.entity.ResearchReport;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResearchReportMapper {
    /**
     * 按行业ID查询行业研报
     * @param sectionId 行业ID
     * @return
     */
    public List<ResearchReport> findByIndustry(@Param("sectionId") int sectionId);
}
