package com.no1.data.entity;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.NumberFormat;

import java.util.Date;

public class PurchaseStatus {
//    status_id	int
    private int statusId;
//    open_date	date 中签号公布日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date openDate;
//    listing_date	date 上市日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date listingDate;
//    lottery_rate_online_distribution	double 网上发行中签率
    private Double lotteryRateOnlineDistribution;
//    lottery_rate_offline_distribution	double 网下配售中签率
    private Double lotteryRateOfflineDistribution;
//    date_announcement_result_successful_signature	date 中签结果公告日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date dateAnnouncementResultSuccessfulSignature;
//    subscription_multiples_offline_distribution	double 网下配售认购倍数
    private Double subscriptionMultiplesOfflineDistribution;
//    accumulated_number_quoted_shares	double 初步询价累计报价股数（万股）
    private Double accumulatedNumberQuotedShares;
//    accumulative_quotation_multiple	double 初步询价累计报价倍数
    private Double accumulativeQuotationMultiple;
//    number_valid_online_subscribers	int 网上有效申购户数(户)
    private Integer numberValidOnlineSubscribers;
//    number_valid_offline_subscribers	int 网下有效申购户数（户）
    private Integer numberValidOfflineSubscribers;
//    number_effective_shares_purchased_online	double 网上有效申购股数（万股）

    private Double numberEffectiveSharesPurchasedOnline;
//    number_effective_shares_purchased_offline	double 网上有效申购股数（万股）
    private Double numberEffectiveSharesPurchasedOffline;

    public Date getDateAnnouncementResultSuccessfulSignature() {
        return dateAnnouncementResultSuccessfulSignature;
    }

    public void setDateAnnouncementResultSuccessfulSignature(Date dateAnnouncementResultSuccessfulSignature) {
        this.dateAnnouncementResultSuccessfulSignature = dateAnnouncementResultSuccessfulSignature;
    }

    public Double getSubscriptionMultiplesOfflineDistribution() {
        return subscriptionMultiplesOfflineDistribution;
    }

    public void setSubscriptionMultiplesOfflineDistribution(Double subscriptionMultiplesOfflineDistribution) {
        this.subscriptionMultiplesOfflineDistribution = subscriptionMultiplesOfflineDistribution;
    }

    public Double getAccumulatedNumberQuotedShares() {
        return accumulatedNumberQuotedShares;
    }

    public void setAccumulatedNumberQuotedShares(Double accumulatedNumberQuotedShares) {
        this.accumulatedNumberQuotedShares = accumulatedNumberQuotedShares;
    }

    public Double getAccumulativeQuotationMultiple() {
        return accumulativeQuotationMultiple;
    }

    public void setAccumulativeQuotationMultiple(Double accumulativeQuotationMultiple) {
        this.accumulativeQuotationMultiple = accumulativeQuotationMultiple;
    }

    public Integer getNumberValidOnlineSubscribers() {
        return numberValidOnlineSubscribers;
    }

    public void setNumberValidOnlineSubscribers(Integer numberValidOnlineSubscribers) {
        this.numberValidOnlineSubscribers = numberValidOnlineSubscribers;
    }

    public Integer getNumberValidOfflineSubscribers() {
        return numberValidOfflineSubscribers;
    }

    public void setNumberValidOfflineSubscribers(Integer numberValidOfflineSubscribers) {
        this.numberValidOfflineSubscribers = numberValidOfflineSubscribers;
    }

    public Double getNumberEffectiveSharesPurchasedOnline() {
        return numberEffectiveSharesPurchasedOnline;
    }

    public void setNumberEffectiveSharesPurchasedOnline(Double numberEffectiveSharesPurchasedOnline) {
        this.numberEffectiveSharesPurchasedOnline = numberEffectiveSharesPurchasedOnline;
    }

    public Double getNumberEffectiveSharesPurchasedOffline() {
        return numberEffectiveSharesPurchasedOffline;
    }

    public void setNumberEffectiveSharesPurchasedOffline(Double numberEffectiveSharesPurchasedOffline) {
        this.numberEffectiveSharesPurchasedOffline = numberEffectiveSharesPurchasedOffline;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public Date getOpenDate() {
        return openDate;
    }

    public void setOpenDate(Date openDate) {
        this.openDate = openDate;
    }

    public Date getListingDate() {
        return listingDate;
    }

    public void setListingDate(Date listingDate) {
        this.listingDate = listingDate;
    }

    public Double getLotteryRateOnlineDistribution() {
        return lotteryRateOnlineDistribution;
    }

    public void setLotteryRateOnlineDistribution(Double lotteryRateOnlineDistribution) {
        this.lotteryRateOnlineDistribution = lotteryRateOnlineDistribution;
    }

    public Double getLotteryRateOfflineDistribution() {
        return lotteryRateOfflineDistribution;
    }

    public void setLotteryRateOfflineDistribution(Double lotteryRateOfflineDistribution) {
        this.lotteryRateOfflineDistribution = lotteryRateOfflineDistribution;
    }
}
