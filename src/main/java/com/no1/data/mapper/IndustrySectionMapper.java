package com.no1.data.mapper;

import com.no1.data.entity.IndustrySection;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface IndustrySectionMapper {
    /**
     * 查询行业板块
     * @param map
     * @return
     */
    public List<IndustrySection> findAll(Map map);
}
