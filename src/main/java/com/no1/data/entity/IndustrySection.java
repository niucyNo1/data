package com.no1.data.entity;

import java.util.List;

public class IndustrySection {

    //    section_id	int
    private int sectionId;
    //    section_name	varchar
    private String sectionName;
    //    latest_price	double
    private Double latestPrice;
    //    up_down_limit	double
    private Double upDownLimit;
    //    up_down_range	varchar 涨跌幅
    private String upDownRange;
    //    total_market_value	varchar 总市值
    private Double totalMarketValue;
    //    total_market_unit	varchar 总市值单位
    private String  totalMarketUnit;
    //    turnover_rate	varchar 换手率
    private String turnoverRate;
    //    rising_number	int 上涨家数
    private Integer risingNumber;
    //    drop_number	int 下跌家数
    private Integer dropNumber;
    //    leading_stock	varchar 领涨股票
    private String leadingStock;
    //    up_downs	varchar 涨跌幅
    private String upDowns;
    private List<ResearchReport> researchReportList;

    public int getSectionId() {
        return sectionId;
    }

    public void setSectionId(int sectionId) {
        this.sectionId = sectionId;
    }

    public String getSectionName() {
        return sectionName;
    }

    public void setSectionName(String sectionName) {
        this.sectionName = sectionName;
    }

    public Double getLatestPrice() {
        return latestPrice;
    }

    public void setLatestPrice(Double latestPrice) {
        this.latestPrice = latestPrice;
    }

    public Double getUpDownLimit() {
        return upDownLimit;
    }

    public void setUpDownLimit(Double upDownLimit) {
        this.upDownLimit = upDownLimit;
    }

    public String getUpDownRange() {
        return upDownRange;
    }

    public void setUpDownRange(String upDownRange) {
        this.upDownRange = upDownRange;
    }

    public Double getTotalMarketValue() {
        return totalMarketValue;
    }

    public void setTotalMarketValue(Double totalMarketValue) {
        this.totalMarketValue = totalMarketValue;
    }

    public String getTotalMarketUnit() {
        return totalMarketUnit;
    }

    public void setTotalMarketUnit(String totalMarketUnit) {
        this.totalMarketUnit = totalMarketUnit;
    }

    public String getTurnoverRate() {
        return turnoverRate;
    }

    public void setTurnoverRate(String turnoverRate) {
        this.turnoverRate = turnoverRate;
    }

    public Integer getRisingNumber() {
        return risingNumber;
    }

    public void setRisingNumber(Integer risingNumber) {
        this.risingNumber = risingNumber;
    }

    public Integer getDropNumber() {
        return dropNumber;
    }

    public void setDropNumber(Integer dropNumber) {
        this.dropNumber = dropNumber;
    }

    public String getLeadingStock() {
        return leadingStock;
    }

    public void setLeadingStock(String leadingStock) {
        this.leadingStock = leadingStock;
    }

    public String getUpDowns() {
        return upDowns;
    }

    public void setUpDowns(String upDowns) {
        this.upDowns = upDowns;
    }

    public List<ResearchReport> getResearchReportList() {
        return researchReportList;
    }

    public void setResearchReportList(List<ResearchReport> researchReportList) {
        this.researchReportList = researchReportList;
    }
}
