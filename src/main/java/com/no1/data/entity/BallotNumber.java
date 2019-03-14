package com.no1.data.entity;

/**
 * 中签号
 */
public class BallotNumber {
//    ballot_number_id	int
    private int ballotNumberId;
//    last_four_digits	varchar
    private String lastFourDigits;
//    last_five_digits	varchar
    private String lastFiveDigits;
//    last_six_digits	varchar
    private String lastSixDigits;
//    last_seven_digits	varchar
    private String lastSevenDigits;
//    last_eight_digits	varchar
    private String lastEightDigits;
//    last_nine_digits	varchar
    private String lastNineDigits;

    public int getBallotNumberId() {
        return ballotNumberId;
    }

    public void setBallotNumberId(int ballotNumberId) {
        this.ballotNumberId = ballotNumberId;
    }

    public String getLastFourDigits() {
        return lastFourDigits;
    }

    public void setLastFourDigits(String lastFourDigits) {
        this.lastFourDigits = lastFourDigits;
    }

    public String getLastFiveDigits() {
        return lastFiveDigits;
    }

    public void setLastFiveDigits(String lastFiveDigits) {
        this.lastFiveDigits = lastFiveDigits;
    }

    public String getLastSixDigits() {
        return lastSixDigits;
    }

    public void setLastSixDigits(String lastSixDigits) {
        this.lastSixDigits = lastSixDigits;
    }

    public String getLastSevenDigits() {
        return lastSevenDigits;
    }

    public void setLastSevenDigits(String lastSevenDigits) {
        this.lastSevenDigits = lastSevenDigits;
    }

    public String getLastEightDigits() {
        return lastEightDigits;
    }

    public void setLastEightDigits(String lastEightDigits) {
        this.lastEightDigits = lastEightDigits;
    }

    public String getLastNineDigits() {
        return lastNineDigits;
    }

    public void setLastNineDigits(String lastNineDigits) {
        this.lastNineDigits = lastNineDigits;
    }
}
