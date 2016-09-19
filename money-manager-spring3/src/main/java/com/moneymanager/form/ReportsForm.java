package com.moneymanager.form;

public class ReportsForm {

    private String mmReportFor;
    private String mmReportStartDate;
    private String mmReportEndDate;
    private String mmReportDate;
    private String mmReportMonth;
    private String mmReportYear;

    /**
     * @return the mmReportFor
     */
    public String getMmReportFor() {
        return mmReportFor;
    }

    /**
     * @param mmReportFor
     *            the mmReportFor to set
     */
    public void setMmReportFor(String mmReportFor) {
        this.mmReportFor = mmReportFor;
    }

    /**
     * @return the mmReportStartDate
     */
    public String getMmReportStartDate() {
        return mmReportStartDate;
    }

    /**
     * @param mmReportStartDate
     *            the mmReportStartDate to set
     */
    public void setMmReportStartDate(String mmReportStartDate) {
        this.mmReportStartDate = mmReportStartDate;
    }

    /**
     * @return the mmReportEndDate
     */
    public String getMmReportEndDate() {
        return mmReportEndDate;
    }

    /**
     * @param mmReportEndDate
     *            the mmReportEndDate to set
     */
    public void setMmReportEndDate(String mmReportEndDate) {
        this.mmReportEndDate = mmReportEndDate;
    }

    /**
     * @return the mmReportDate
     */
    public String getMmReportDate() {
        return mmReportDate;
    }

    /**
     * @param mmReportDate
     *            the mmReportDate to set
     */
    public void setMmReportDate(String mmReportDate) {
        this.mmReportDate = mmReportDate;
    }

    /**
     * @return the mmReportMonth
     */
    public String getMmReportMonth() {
        return mmReportMonth;
    }

    /**
     * @param mmReportMonth
     *            the mmReportMonth to set
     */
    public void setMmReportMonth(String mmReportMonth) {
        this.mmReportMonth = mmReportMonth;
    }

    /**
     * @return the mmReportYear
     */
    public String getMmReportYear() {
        return mmReportYear;
    }

    /**
     * @param mmReportYear
     *            the mmReportYear to set
     */
    public void setMmReportYear(String mmReportYear) {
        this.mmReportYear = mmReportYear;
    }

    /*
     * (non-Javadoc)
     * 
     * @see java.lang.Object#toString()
     */
    @Override
    public String toString() {
        return "ReportsForm [\n" + "\tmmReportFor=" + mmReportFor + ",\n" + "\tmmReportStartDate=" + mmReportStartDate + ",\n" + "\tmmReportEndDate=" + mmReportEndDate + ",\n" + "\tmmReportDate=" + mmReportDate + ",\n" + "\tmmReportMonth=" + mmReportMonth + ",\n" + "\tmmReportYear=" + mmReportYear
                        + "\n" + "]";
    }
}