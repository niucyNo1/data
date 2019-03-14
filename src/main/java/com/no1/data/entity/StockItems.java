package com.no1.data.entity;

public class StockItems {
//    itme_id	int
    private int itemId;
//    issue_status	int
    private IssueStatus issueStatus;
//    issue_mode	int
    private IssueMode issueMode;
//    purchase_status
    private PurchaseStatus purchaseStatus;
    //items_underwriter int
    private Underwriter underwriter;
    //items_ballot
    private BallotNumber ballotNumber;
    //items_perform
    private FirstDayPerformance firstDayPerformance;
//    business_scope	varchar 经营范围
    private String businessScope;
//    main_business	varchar 主营业务
    private String mainBusiness;

    public String getBusinessScope() {
        return businessScope;
    }

    public void setBusinessScope(String businessScope) {
        this.businessScope = businessScope;
    }

    public String getMainBusiness() {
        return mainBusiness;
    }

    public void setMainBusiness(String mainBusiness) {
        this.mainBusiness = mainBusiness;
    }

    public FirstDayPerformance getFirstDayPerformance() {
        return firstDayPerformance;
    }

    public void setFirstDayPerformance(FirstDayPerformance firstDayPerformance) {
        this.firstDayPerformance = firstDayPerformance;
    }

    public BallotNumber getBallotNumber() {
        return ballotNumber;
    }

    public void setBallotNumber(BallotNumber ballotNumber) {
        this.ballotNumber = ballotNumber;
    }

    public Underwriter getUnderwriter() {
        return underwriter;
    }

    public void setUnderwriter(Underwriter underwriter) {
        this.underwriter = underwriter;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
    }

    public IssueStatus getIssueStatus() {
        return issueStatus;
    }

    public void setIssueStatus(IssueStatus issueStatus) {
        this.issueStatus = issueStatus;
    }

    public IssueMode getIssueMode() {
        return issueMode;
    }

    public void setIssueMode(IssueMode issueMode) {
        this.issueMode = issueMode;
    }

    public PurchaseStatus getPurchaseStatus() {
        return purchaseStatus;
    }

    public void setPurchaseStatus(PurchaseStatus purchaseStatus) {
        this.purchaseStatus = purchaseStatus;
    }
}
