package com.no1.data.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class FirstDayPerformance {
//    performance_id	int
    private int performanceId;
//    open_price	double
    private Double openPrice;
//    close_price	double
    private Double closePrice;
//    open_premium	double
    private Double openPremium;
//    closing_gains	double
    private Double closingGains;
//    turnover_rate	double
    private Double turnoverRate;
//    maximum_increase	double
    private Double maximumIncrease;
//    first_day_open_date	date
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date firstDayOpenDate;
//    total_gains	double
    private Double totalGains;
//    continuous_word_boards_number	int
    private Integer continuousWordBoardsNumber;
//    open_day_average_price	double
    private Double openDayAveragePrice;
//    every_one_makes_profit	int
    private Integer everyOneMakesProfit;

    public int getPerformanceId() {
        return performanceId;
    }

    public void setPerformanceId(int performanceId) {
        this.performanceId = performanceId;
    }

    public Double getOpenPrice() {
        return openPrice;
    }

    public void setOpenPrice(Double openPrice) {
        this.openPrice = openPrice;
    }

    public Double getClosePrice() {
        return closePrice;
    }

    public void setClosePrice(Double closePrice) {
        this.closePrice = closePrice;
    }

    public Double getOpenPremium() {
        return openPremium;
    }

    public void setOpenPremium(Double openPremium) {
        this.openPremium = openPremium;
    }

    public Double getClosingGains() {
        return closingGains;
    }

    public void setClosingGains(Double closingGains) {
        this.closingGains = closingGains;
    }

    public Double getTurnoverRate() {
        return turnoverRate;
    }

    public void setTurnoverRate(Double turnoverRate) {
        this.turnoverRate = turnoverRate;
    }

    public Double getMaximumIncrease() {
        return maximumIncrease;
    }

    public void setMaximumIncrease(Double maximumIncrease) {
        this.maximumIncrease = maximumIncrease;
    }

    public Date getFirstDayOpenDate() {
        return firstDayOpenDate;
    }

    public void setFirstDayOpenDate(Date firstDayOpenDate) {
        this.firstDayOpenDate = firstDayOpenDate;
    }

    public Double getTotalGains() {
        return totalGains;
    }

    public void setTotalGains(Double totalGains) {
        this.totalGains = totalGains;
    }

    public Integer getContinuousWordBoardsNumber() {
        return continuousWordBoardsNumber;
    }

    public void setContinuousWordBoardsNumber(Integer continuousWordBoardsNumber) {
        this.continuousWordBoardsNumber = continuousWordBoardsNumber;
    }

    public Double getOpenDayAveragePrice() {
        return openDayAveragePrice;
    }

    public void setOpenDayAveragePrice(Double openDayAveragePrice) {
        this.openDayAveragePrice = openDayAveragePrice;
    }

    public Integer getEveryOneMakesProfit() {
        return everyOneMakesProfit;
    }

    public void setEveryOneMakesProfit(Integer everyOneMakesProfit) {
        this.everyOneMakesProfit = everyOneMakesProfit;
    }
}
