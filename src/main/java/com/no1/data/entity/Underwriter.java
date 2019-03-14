package com.no1.data.entity;

public class Underwriter {
//    underwriter_id	int
    private int underwriterId;
//    lead_underwriter	varchar
    private String leadUnderwriter;
//    underwriter_manner	varchar
    private String underwriterManner;
//    preissue_net_assets_per_share	double
    private Double preissueNetAssetsPerShare;
//    net_assets_per_share_after_issuance	double
    private Double netAssetsPerShareAfterIssuance;
//    dividend_policy	varchar
    private String dividendPolicy;

    public int getUnderwriterId() {
        return underwriterId;
    }

    public void setUnderwriterId(int underwriterId) {
        this.underwriterId = underwriterId;
    }

    public String getLeadUnderwriter() {
        return leadUnderwriter;
    }

    public void setLeadUnderwriter(String leadUnderwriter) {
        this.leadUnderwriter = leadUnderwriter;
    }

    public String getUnderwriterManner() {
        return underwriterManner;
    }

    public void setUnderwriterManner(String underwriterManner) {
        this.underwriterManner = underwriterManner;
    }

    public Double getPreissueNetAssetsPerShare() {
        return preissueNetAssetsPerShare;
    }

    public void setPreissueNetAssetsPerShare(Double preissueNetAssetsPerShare) {
        this.preissueNetAssetsPerShare = preissueNetAssetsPerShare;
    }

    public Double getNetAssetsPerShareAfterIssuance() {
        return netAssetsPerShareAfterIssuance;
    }

    public void setNetAssetsPerShareAfterIssuance(Double netAssetsPerShareAfterIssuance) {
        this.netAssetsPerShareAfterIssuance = netAssetsPerShareAfterIssuance;
    }

    public String getDividendPolicy() {
        return dividendPolicy;
    }

    public void setDividendPolicy(String dividendPolicy) {
        this.dividendPolicy = dividendPolicy;
    }
}
