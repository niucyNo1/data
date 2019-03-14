package com.no1.data.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class IssueStatus {
//    status_id	int
    private int statusId;
//    stock_code	varchar
    private String stockCode;
//    stock_name	varchar
    private String stockName;
//    purchase_code	varchar
    private String purchaseCode;
//    listing_place	varchar
    private String listingPlace;
//    issue_price	double
    private Double issuePrice;
//    ipo_pe_ratio	double
    private Double ipoPeRatio;
//    pe_ratio_reference_industry	varchar
    private String peTatioReferenceIndustry;
//    reference_industry_pe_ratio	double
    private Double referenceIndustryPeRatio;
//    issue_face_value	double 发行面值（元）
    private Double issueFaceValue;
//    total_actual_fund_raised	double 实际募集资金总额(亿元)
    private Double totalActualFundRaised;
//    online_release_date	date 网上发行日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date onlineReleaseDate;
//    offline_distribution_date	date 网下配售日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date offlineDistributionDate;
//    number_online_issuance	int 网上发行数量（股)
    private Integer numberOnlineIssuance;
//    offline_distribution_quantity	int 网下配售数量(股)
    private Integer offlineDistributionQuantity;
//    number_old_stock_transfers	int 老股转让数量(股)
    private Integer numberOldStockTransfers;
//    total_issue_quantity	int 总发行数量（股）
    private Integer totalIssueQuantity;
//    purchase_limit	int 申购数量上限(股)
    private Integer purchaseLimit;
//    payment_date	date 中签缴款日期
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date paymentDate;
//    online_market_capitalization	double 网上顶格申购需配市值(万元)
    private Double onlineMarketCapitalization;
//    online_purchase_market_value_confirm_date	date 网上申购市值确认日
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date onlinePurchaseMarketValueConfirmDate;
//    offline_purchase_market_value	double 网下申购需配市值(万元)
    private Double offlinePurchaseMarketValue;
//    offline_purchase_market_value_confirm_date	date 网下申购市值确认日
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date offlinePurchaseMarketValueConfirmDate;

    public Double getIssueFaceValue() {
        return issueFaceValue;
    }

    public void setIssueFaceValue(Double issueFaceValue) {
        this.issueFaceValue = issueFaceValue;
    }

    public Double getTotalActualFundRaised() {
        return totalActualFundRaised;
    }

    public void setTotalActualFundRaised(Double totalActualFundRaised) {
        this.totalActualFundRaised = totalActualFundRaised;
    }

    public Date getOnlineReleaseDate() {
        return onlineReleaseDate;
    }

    public void setOnlineReleaseDate(Date onlineReleaseDate) {
        this.onlineReleaseDate = onlineReleaseDate;
    }

    public Date getOfflineDistributionDate() {
        return offlineDistributionDate;
    }

    public void setOfflineDistributionDate(Date offlineDistributionDate) {
        this.offlineDistributionDate = offlineDistributionDate;
    }

    public Integer getNumberOnlineIssuance() {
        return numberOnlineIssuance;
    }

    public void setNumberOnlineIssuance(Integer numberOnlineIssuance) {
        this.numberOnlineIssuance = numberOnlineIssuance;
    }

    public Integer getOfflineDistributionQuantity() {
        return offlineDistributionQuantity;
    }

    public void setOfflineDistributionQuantity(Integer offlineDistributionQuantity) {
        this.offlineDistributionQuantity = offlineDistributionQuantity;
    }

    public Integer getNumberOldStockTransfers() {
        return numberOldStockTransfers;
    }

    public void setNumberOldStockTransfers(Integer numberOldStockTransfers) {
        this.numberOldStockTransfers = numberOldStockTransfers;
    }

    public Integer getTotalIssueQuantity() {
        return totalIssueQuantity;
    }

    public void setTotalIssueQuantity(Integer totalIssueQuantity) {
        this.totalIssueQuantity = totalIssueQuantity;
    }

    public Integer getPurchaseLimit() {
        return purchaseLimit;
    }

    public void setPurchaseLimit(Integer purchaseLimit) {
        this.purchaseLimit = purchaseLimit;
    }

    public Date getPaymentDate() {
        return paymentDate;
    }

    public void setPaymentDate(Date paymentDate) {
        this.paymentDate = paymentDate;
    }

    public Double getOnlineMarketCapitalization() {
        return onlineMarketCapitalization;
    }

    public void setOnlineMarketCapitalization(Double onlineMarketCapitalization) {
        this.onlineMarketCapitalization = onlineMarketCapitalization;
    }

    public Date getOnlinePurchaseMarketValueConfirmDate() {
        return onlinePurchaseMarketValueConfirmDate;
    }

    public void setOnlinePurchaseMarketValueConfirmDate(Date onlinePurchaseMarketValueConfirmDate) {
        this.onlinePurchaseMarketValueConfirmDate = onlinePurchaseMarketValueConfirmDate;
    }

    public Double getOfflinePurchaseMarketValue() {
        return offlinePurchaseMarketValue;
    }

    public void setOfflinePurchaseMarketValue(Double offlinePurchaseMarketValue) {
        this.offlinePurchaseMarketValue = offlinePurchaseMarketValue;
    }

    public Date getOfflinePurchaseMarketValueConfirmDate() {
        return offlinePurchaseMarketValueConfirmDate;
    }

    public void setOfflinePurchaseMarketValueConfirmDate(Date offlinePurchaseMarketValueConfirmDate) {
        this.offlinePurchaseMarketValueConfirmDate = offlinePurchaseMarketValueConfirmDate;
    }

    public Double getIssuePrice() {
        return issuePrice;
    }

    public void setIssuePrice(Double issuePrice) {
        this.issuePrice = issuePrice;
    }

    public Double getIpoPeRatio() {
        return ipoPeRatio;
    }

    public void setIpoPeRatio(Double ipoPeRatio) {
        this.ipoPeRatio = ipoPeRatio;
    }

    public String getPeTatioReferenceIndustry() {
        return peTatioReferenceIndustry;
    }

    public void setPeTatioReferenceIndustry(String peTatioReferenceIndustry) {
        this.peTatioReferenceIndustry = peTatioReferenceIndustry;
    }

    public Double getReferenceIndustryPeRatio() {
        return referenceIndustryPeRatio;
    }

    public void setReferenceIndustryPeRatio(Double referenceIndustryPeRatio) {
        this.referenceIndustryPeRatio = referenceIndustryPeRatio;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
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

    public String getListingPlace() {
        return listingPlace;
    }

    public void setListingPlace(String listingPlace) {
        this.listingPlace = listingPlace;
    }
}
