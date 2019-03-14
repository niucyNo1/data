package com.no1.data.entity;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class NewStockMarket {
//    new_stock_id	int
    private int newStockId;
//    corporate_name	varchar
    private String corporateName;
//    declaration_date	date
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date declarationDate;
//    meet_date	date
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date meetDate;
//    current_state	varchar
    private String currentState;
//    purchase_date	date
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date purchaseDate;
//    quantity_issued	double
    private Double quantityIssued;
//    place_listed	varchar
    private String placeListed;
//    underwriter	varchar
    private String underwriter;
//    declaration_form	varchar

    public int getNewStockId() {
        return newStockId;
    }

    public void setNewStockId(int newStockId) {
        this.newStockId = newStockId;
    }

    public String getCorporateName() {
        return corporateName;
    }

    public void setCorporateName(String corporateName) {
        this.corporateName = corporateName;
    }

    public Date getDeclarationDate() {
        return declarationDate;
    }

    public void setDeclarationDate(Date declarationDate) {
        this.declarationDate = declarationDate;
    }

    public Date getMeetDate() {
        return meetDate;
    }

    public void setMeetDate(Date meetDate) {
        this.meetDate = meetDate;
    }

    public String getCurrentState() {
        return currentState;
    }

    public void setCurrentState(String currentState) {
        this.currentState = currentState;
    }

    public Date getPurchaseDate() {
        return purchaseDate;
    }

    public void setPurchaseDate(Date purchaseDate) {
        this.purchaseDate = purchaseDate;
    }

    public Double getQuantityIssued() {
        return quantityIssued;
    }

    public void setQuantityIssued(Double quantityIssued) {
        this.quantityIssued = quantityIssued;
    }

    public String getPlaceListed() {
        return placeListed;
    }

    public void setPlaceListed(String placeListed) {
        this.placeListed = placeListed;
    }

    public String getUnderwriter() {
        return underwriter;
    }

    public void setUnderwriter(String underwriter) {
        this.underwriter = underwriter;
    }
}
