package com.moneymanager.form;

public class CreateTransactionForm {
	
	private String txnName, txnCategory, txnType, txnTags, txnDate, txnDesc, txnSourceAcc, txnSourceType, txnDestAcc, txnDestType;

	/**
	 * @return the txnDestAcc
	 */
	public String getTxnDestAcc() {
		return txnDestAcc;
	}
	/**
	 * @param txnDestAcc the txnDestAcc to set
	 */
	public void setTxnDestAcc(String txnDestAcc) {
		this.txnDestAcc = txnDestAcc;
	}
	/**
	 * @return the txnDestType
	 */
	public String getTxnDestType() {
		return txnDestType;
	}
	/**
	 * @param txnDestType the txnDestType to set
	 */
	public void setTxnDestType(String txnDestType) {
		this.txnDestType = txnDestType;
	}
	/**
	 * @return the txnName
	 */
	public String getTxnName() {
		return txnName;
	}
	/**
	 * @return the txnSourceAcc
	 */
	public String getTxnSourceAcc() {
		return txnSourceAcc;
	}
	/**
	 * @param txnSourceAcc the txnSourceAcc to set
	 */
	public void setTxnSourceAcc(String txnSourceAcc) {
		this.txnSourceAcc = txnSourceAcc;
	}
	/**
	 * @return the txnSourceType
	 */
	public String getTxnSourceType() {
		return txnSourceType;
	}
	/**
	 * @param txnSourceType the txnSourceType to set
	 */
	public void setTxnSourceType(String txnSourceType) {
		this.txnSourceType = txnSourceType;
	}
	/**
	 * @param txnName the txnName to set
	 */
	public void setTxnName(String txnName) {
		this.txnName = txnName;
	}

	/**
	 * @return the txnCategory
	 */
	public String getTxnCategory() {
		return txnCategory;
	}
	/**
	 * @param txnCategory the txnCategory to set
	 */
	public void setTxnCategory(String txnCategory) {
		this.txnCategory = txnCategory;
	}

	/**
	 * @return the txnType
	 */
	public String getTxnType() {
		return txnType;
	}
	/**
	 * @param txnType the txnType to set
	 */
	public void setTxnType(String txnType) {
		this.txnType = txnType;
	}

	/**
	 * @return the txnTags
	 */
	public String getTxnTags() {
		return txnTags;
	}
	/**
	 * @param txnTags the txnTags to set
	 */
	public void setTxnTags(String txnTags) {
		this.txnTags = txnTags;
	}

	/**
	 * @return the txnDate
	 */
	public String getTxnDate() {
		return txnDate;
	}
	/**
	 * @param txnDate the txnDate to set
	 */
	public void setTxnDate(String txnDate) {
		this.txnDate = txnDate;
	}

	/**
	 * @return the txnDesc
	 */
	public String getTxnDesc() {
		return txnDesc;
	}
	/**
	 * @param txnDesc the txnDesc to set
	 */
	public void setTxnDesc(String txnDesc) {
		this.txnDesc = txnDesc;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TransactionForm [\n" + 
					"txnName=" + txnName + ",\n" + 
					"txnCategory=" + txnCategory + ",\n" + 
					"txnType=" + txnType + ",\n" + 
					"txnTags=" + txnTags + ",\n" + 
					"txnDate=" + txnDate + ",\n" + 
					"txnDesc=" + txnDesc + ",\n" +
					"txnSourceAcc=" + txnSourceAcc + ",\n" +
					"txnSourceType=" + txnSourceType + ",\n" +
					"txnDestAcc=" + txnDestAcc + ",\n" +
					"txnDestType=" + txnDestType + ",\n" +
				"\n]";
	}
}