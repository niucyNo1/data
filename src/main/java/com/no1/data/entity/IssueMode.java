package com.no1.data.entity;

public class IssueMode {
//    mode_id	int
    private int modeId;
//    mode_type	varchar
    private String modeType;
//    mode_descrip	varchar
    private String modeDescrip;

    public int getModeId() {
        return modeId;
    }

    public void setModeId(int modeId) {
        this.modeId = modeId;
    }

    public String getModeType() {
        return modeType;
    }

    public void setModeType(String modeType) {
        this.modeType = modeType;
    }

    public String getModeDescrip() {
        return modeDescrip;
    }

    public void setModeDescrip(String modeDescrip) {
        this.modeDescrip = modeDescrip;
    }
}
