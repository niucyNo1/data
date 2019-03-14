package com.no1.data.entity;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@JsonInclude(JsonInclude.Include.NON_NULL )
public class Stock {
    private int stockId;
    //    stock_code	varchar 新股代码
    private String stockCode;
    //    stock_name	varchar 新股简称
    private String stockName;
    //    purchase_code	varchar 申购代码
    private String purchaseCode;
    //    total_num	int 发行总数
    private Integer totalNum;
    //    online_distribution	int 网上发行
    private Integer onlineDistribution;
    //    market_capitalization	double
    private Double marketCapitalization;
    //    purchase_ceiling	double 申购上限
    private Double purchaseCeiling;
    //    issue_price	double 发行价格
    private Double issuePrice;
    //    latest_price	double 最新价
    private Double latestPrice;
    //    first_day_close	double 首日收盘价
    private Double firstDayClose;
    //    purchase_date	date 申购日期
    @DateTimeFormat(pattern = "MM-dd")
    private Date purchaseDate;
    //    date_publication_winning_number	date 中签号公布日
    @DateTimeFormat(pattern = "MM-dd")
    private Date datePublicationWinningNumber;
    //    date_successful_payment	date 缴款日
    @DateTimeFormat(pattern = "MM-dd")
    private Date dateSuccessfulPayment;
    //    listing_date	date 上市日期
    @DateTimeFormat(pattern = "MM-dd")
    private Date listingDate;
    //    announcement_date_online_signing_rate	date 中签率公布日期
    @DateTimeFormat(pattern = "MM-dd")
    private Date announcementDateOnlineSigningRate;
    //    thaw_date	date 解冻日期
    @DateTimeFormat(pattern = "MM-dd")
    private Date thawDate;
//    ipo_pe_ratio	double 发行市盈率
    private Double ipoPeRatio;
//    winning_rate	double 中签率
    private Double winningRate;
//    money_for_each 每一签资金
    private Integer moneyForEach;
    //    frozen_funds_online 网上申购冻结资金
    private Integer frozenFundsOnline;
    //    frozen_funds_offline 网下配售冻结资金
    private Integer frozenFundsOffline;
    //    frozen_funds 总共冻结资金
    private Integer frozenFunds;
    //    sum_money 实际募资总额
    private Integer sumMoney;
//    first_day_open	double
    private Double firstDayOpen;
//    first_day_gain	double 首日涨幅
    private String firstDayGain;
//    turnover_rate	double
    private String turnoverRate;
    private StockItems stockItems;

    public StockItems getStockItems() {
        return stockItems;
    }

    public void setStockItems(StockItems stockItems) {
        this.stockItems = stockItems;
    }

    public Integer getSumMoney() {
        return sumMoney;
    }

    public Date getThawDate() {
        return thawDate;
    }

    public void setThawDate(Date thawDate) {
        this.thawDate = thawDate;
    }

    public void setSumMoney(Integer sumMoney) {
        this.sumMoney = sumMoney;
    }

    public Integer getMoneyForEach() {
        return moneyForEach;
    }

    public void setMoneyForEach(Integer moneyForEach) {
        this.moneyForEach = moneyForEach;
    }

    public Integer getFrozenFundsOnline() {
        return frozenFundsOnline;
    }

    public void setFrozenFundsOnline(Integer frozenFundsOnline) {
        this.frozenFundsOnline = frozenFundsOnline;
    }

    public Integer getFrozenFundsOffline() {
        return frozenFundsOffline;
    }

    public void setFrozenFundsOffline(Integer frozenFundsOffline) {
        this.frozenFundsOffline = frozenFundsOffline;
    }

    public Integer getFrozenFunds() {
        return frozenFunds;
    }

    public void setFrozenFunds(Integer frozenFunds) {
        this.frozenFunds = frozenFunds;
    }

    public Double getFirstDayOpen() {
        return firstDayOpen;
    }

    public void setFirstDayOpen(Double firstDayOpen) {
        this.firstDayOpen = firstDayOpen;
    }

    public String getFirstDayGain() {
        return firstDayGain;
    }

    public void setFirstDayGain(String firstDayGain) {
        this.firstDayGain = firstDayGain;
    }

    public String getTurnoverRate() {
        return turnoverRate;
    }

    public void setTurnoverRate(String turnoverRate) {
        this.turnoverRate = turnoverRate;
    }

    public Integer getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }

    public int getStockId() {
        return stockId;
    }

    public void setStockId(int stockId) {
        this.stockId = stockId;
    }

    public String getStockCode() {
        return stockCode;
    }

    public void setStockCode(String stockCode) {
        this.stockCode = stockCode;
    }

    public String getStockName() {
        return stockName;
    }

    public void setStockName(String stockName) {
        this.stockName = stockName;
    }

    public String getPurchaseCode() {
        return purchaseCode;
    }

    public void setPurchaseCode(String purchaseCode) {
        this.purchaseCode = purchaseCode;
    }

    public Integer getOnlineDistribution() {
        return onlineDistribution;
    }

    public void setOnlineDistribution(Integer onlineDistribution) {
        this.onlineDistribution = onlineDistribution;
    }

    public Double getMarketCapitalization() {
        return marketCapitalization;
    }

    public void setMarketCapitalization(Double marketCapitalization) {
        this.marketCapitalization = marketCapitalization;
    }

    public Double getPurchaseCeiling() {
        return purchaseCeiling;
    }

    public void setPurchaseCeiling(Double purchaseCeiling) {
        this.purchaseCeiling = purchaseCeiling;
    }

    public Double getIssuePrice() {
        return issuePrice;
    }

    public void setIssuePrice(Double issuePrice) {
        this.issuePrice = issuePrice;
    }

    public Double getLatestPrice() {
        return latestPrice;
    }

    public void setLatestPrice(Double latestPrice) {
        this.latestPrice = latestPrice;
    }

    public Double getFirstDayClose() {
        return firstDayClose;
    }

    public void setFirstDayClose(Double firstDayClose) {
        this.firstDayClose = firstDayClose;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Date getDatePublicationWinningNumber() {
        return datePublicationWinningNumber;
    }

    public void setDatePublicationWinningNumber(Date datePublicationWinningNumber) {
        this.datePublicationWinningNumber = datePublicationWinningNumber;
    }

    public Date getDateSuccessfulPayment() {
        return dateSuccessfulPayment;
    }

    public void setDateSuccessfulPayment(Date dateSuccessfulPayment) {
        this.dateSuccessfulPayment = dateSuccessfulPayment;
    }

    public Date getListingDate() {
        return listingDate;
    }

    public void setListingDate(Date listingDate) {
        this.listingDate = listingDate;
    }

    public Date getAnnouncementDateOnlineSigningRate() {
        return announcementDateOnlineSigningRate;
    }

    public void setAnnouncementDateOnlineSigningRate(Date announcementDateOnlineSigningRate) {
        this.announcementDateOnlineSigningRate = announcementDateOnlineSigningRate;
    }

    public Double getIpoPeRatio() {
        return ipoPeRatio;
    }

    public void setIpoPeRatio(Double ipoPeRatio) {
        this.ipoPeRatio = ipoPeRatio;
    }

    public Double getWinningRate() {
        return winningRate;
    }

    public void setWinningRate(Double winningRate) {
        this.winningRate = winningRate;
    }

}
