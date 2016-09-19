package com.moneymanager.form;

public class ViewTransactionsForm {
    private int viewTxnsForType;
    private String viewTxnsStartDate;
    private String viewTxnsEndDate;
    private String viewTxnsDate;
    private String viewTxnsMonth;
    private String viewTxnsYear;
    private String viewTxnsByCategory;
    private String viewTxnsByTags;

    /**
     * @return the viewTxnsForType
     */
    public int getViewTxnsForType() {
        return viewTxnsForType;
    }

    /**
     * @param viewTxnsForType
     *            the viewTxnsForType to set
     */
    public void setViewTxnsForType(int viewTxnsForType) {
        this.viewTxnsForType = viewTxnsForType;
    }

    /**
     * @return the viewTxnsStartDate
     */
    public String getViewTxnsStartDate() {
        return viewTxnsStartDate;
    }

    /**
     * @param viewTxnsStartDate
     *            the viewTxnsStartDate to set
     */
    public void setViewTxnsStartDate(String viewTxnsStartDate) {
        this.viewTxnsStartDate = viewTxnsStartDate;
    }

    /**
     * @return the viewTxnsEndDate
     */
    public String getViewTxnsEndDate() {
        return viewTxnsEndDate;
    }

    /**
     * @param viewTxnsEndDate
     *            the viewTxnsEndDate to set
     */
    public void setViewTxnsEndDate(String viewTxnsEndDate) {
        this.viewTxnsEndDate = viewTxnsEndDate;
    }

    /**
     * @return the viewTxnsDate
     */
    public String getViewTxnsDate() {
        return viewTxnsDate;
    }

    /**
     * @param viewTxnsDate
     *            the viewTxnsDate to set
     */
    public void setViewTxnsDate(String viewTxnsDate) {
        this.viewTxnsDate = viewTxnsDate;
    }

    /**
     * @return the viewTxnsMonth
     */
    public String getViewTxnsMonth() {
        return viewTxnsMonth;
    }

    /**
     * @param viewTxnsMonth
     *            the viewTxnsMonth to set
     */
    public void setViewTxnsMonth(String viewTxnsMonth) {
        this.viewTxnsMonth = viewTxnsMonth;
    }

    /**
     * @return the viewTxnsYear
     */
    public String getViewTxnsYear() {
        return viewTxnsYear;
    }

    /**
     * @param viewTxnsYear
     *            the viewTxnsYear to set
     */
    public void setViewTxnsYear(String viewTxnsYear) {
        this.viewTxnsYear = viewTxnsYear;
    }

    /**
     * @return the viewTxnsByCategory
     */
    public String getViewTxnsByCategory() {
        return viewTxnsByCategory;
    }

    /**
     * @param viewTxnsByCategory
     *            the viewTxnsByCategory to set
     */
    public void setViewTxnsByCategory(String viewTxnsByCategory) {
        this.viewTxnsByCategory = viewTxnsByCategory;
    }

    /**
     * @return the viewTxnsByTags
     */
    public String getViewTxnsByTags() {
        return viewTxnsByTags;
    }

    /**
     * @param viewTxnsByTags
     *            the viewTxnsByTags to set
     */
    public void setViewTxnsByTags(String viewTxnsByTags) {
        this.viewTxnsByTags = viewTxnsByTags;
    }

    @Override
    public String toString() {
        return "ViewTransactionsForm[\n" + "\tviewTxnsForType=" + viewTxnsForType + ",\n" + "\tviewTxnsStartDate=" + viewTxnsStartDate + ",\n" + "\tviewTxnsEndDate=" + viewTxnsEndDate + ",\n" + "\tviewTxnsDate=" + viewTxnsDate + ",\n" + "\tviewTxnsMonth=" + viewTxnsMonth + ",\n" + "\tviewTxnsYear="
                        + viewTxnsYear + ",\n" + "\tviewTxnsByCategory=" + viewTxnsByCategory + ",\n" + "\tviewTxnsByTags=" + viewTxnsByTags + ",\n" + "]";
    }
}