package com.no1.data.service.impl;

import com.github.pagehelper.PageInfo;
import com.no1.data.entity.IndustrySection;
import com.no1.data.mapper.IndustrySectionMapper;
import com.no1.data.mapper.ResearchReportMapper;
import com.no1.data.service.IndustrySectionService;
import com.github.pagehelper.PageHelper;
import com.no1.data.mapper.IndustrySectionMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class IndustrySectionServiceImpl implements IndustrySectionService {
    @Autowired
    private IndustrySectionMapper industrySectionMapper;

    @Override
    public PageInfo<IndustrySection> findItemByPage(int currentPage, int pageSize,String sortValue,String sortOrder) {
            //设置分页信息，分别是当前页数和每页显示的总记录数【记住：必须在mapper接口中的方法执行之前设置该分页信息】
            PageHelper.startPage(currentPage, pageSize);
            Map map = new HashMap();

            //板块名称、领涨股票按中文A~Z的方式排序
            if("section_name".equals(sortValue)||"leading_stock".equals(sortValue)){
                sortValue="CONVERT("+sortValue+" using gbk)";
            }else if("total_market".equals(sortValue)){
                //总市值带上单位排序
                if("asc".equals(sortOrder)){
                    sortValue="total_market_unit desc,total_market_value";
                }else {
                    sortValue="total_market_unit,total_market_value";
                }
            }
            map.put("sortValue",sortValue);
            map.put("sortOrder",sortOrder);
            //将排序字段以及排序方式作为参数
            List<IndustrySection> allItems = industrySectionMapper.findAll(map);
            PageInfo<IndustrySection> pageData = new PageInfo<IndustrySection>(allItems);
            return pageData;
        }
}
