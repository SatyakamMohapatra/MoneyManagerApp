package com.moneymanager.dto;

public class TransactionsDto {

	private String mm_txn_id;
	private String mm_txn_name;
	private String mm_txn_type;
	private int mm_txn_user_id;
	private String mm_txn_cat_id;
	private String mm_txn_tag_ids;
	private int mm_txn_done_at;
	private String mm_txn_desc;
	private String mm_txn_source_account;
	private String mm_txn_target_account;
	
	/**
	 * @return the mm_txn_id
	 */
	public String getMm_txn_id() {
		return mm_txn_id;
	}

	/**
	 * @param mm_txn_id the mm_txn_id to set
	 */
	public void setMm_txn_id(String mm_txn_id) {
		this.mm_txn_id = mm_txn_id;
	}

	/**
	 * @return the mm_txn_name
	 */
	public String getMm_txn_name() {
		return mm_txn_name;
	}

	/**
	 * @param mm_txn_name the mm_txn_name to set
	 */
	public void setMm_txn_name(String mm_txn_name) {
		this.mm_txn_name = mm_txn_name;
	}

	/**
	 * @return the mm_txn_type
	 */
	public String getMm_txn_type() {
		return mm_txn_type;
	}

	/**
	 * @param mm_txn_type the mm_txn_type to set
	 */
	public void setMm_txn_type(String mm_txn_type) {
		this.mm_txn_type = mm_txn_type;
	}

	/**
	 * @return the mm_txn_user_id
	 */
	public int getMm_txn_user_id() {
		return mm_txn_user_id;
	}

	/**
	 * @param mm_txn_user_id the mm_txn_user_id to set
	 */
	public void setMm_txn_user_id(int mm_txn_user_id) {
		this.mm_txn_user_id = mm_txn_user_id;
	}

	/**
	 * @return the mm_txn_cat_id
	 */
	public String getMm_txn_cat_id() {
		return mm_txn_cat_id;
	}

	/**
	 * @param mm_txn_cat_id the mm_txn_cat_id to set
	 */
	public void setMm_txn_cat_id(String mm_txn_cat_id) {
		this.mm_txn_cat_id = mm_txn_cat_id;
	}

	/**
	 * @return the mm_txn_tag_ids
	 */
	public String getMm_txn_tag_ids() {
		return mm_txn_tag_ids;
	}

	/**
	 * @param mm_txn_tag_ids the mm_txn_tag_ids to set
	 */
	public void setMm_txn_tag_ids(String mm_txn_tag_ids) {
		this.mm_txn_tag_ids = mm_txn_tag_ids;
	}

	/**
	 * @return the mm_txn_done_at
	 */
	public int getMm_txn_done_at() {
		return mm_txn_done_at;
	}

	/**
	 * @param mm_txn_done_at the mm_txn_done_at to set
	 */
	public void setMm_txn_done_at(int mm_txn_done_at) {
		this.mm_txn_done_at = mm_txn_done_at;
	}

	/**
	 * @return the mm_txn_desc
	 */
	public String getMm_txn_desc() {
		return mm_txn_desc;
	}

	/**
	 * @param mm_txn_desc the mm_txn_desc to set
	 */
	public void setMm_txn_desc(String mm_txn_desc) {
		this.mm_txn_desc = mm_txn_desc;
	}

	/**
	 * @return the mm_txn_source_account
	 */
	public String getMm_txn_source_account() {
		return mm_txn_source_account;
	}

	/**
	 * @param mm_txn_source_account the mm_txn_source_account to set
	 */
	public void setMm_txn_source_account(String mm_txn_source_account) {
		this.mm_txn_source_account = mm_txn_source_account;
	}

	/**
	 * @return the mm_txn_target_account
	 */
	public String getMm_txn_target_account() {
		return mm_txn_target_account;
	}

	/**
	 * @param mm_txn_target_account the mm_txn_target_account to set
	 */
	public void setMm_txn_target_account(String mm_txn_target_account) {
		this.mm_txn_target_account = mm_txn_target_account;
	}

	@Override
	public String toString() {
		return "TransactionsDto [mm_txn_id=" + mm_txn_id + ", mm_txn_name=" + mm_txn_name + ", mm_txn_type="
				+ mm_txn_type + ", mm_txn_user_id=" + mm_txn_user_id + ", mm_txn_cat_id=" + mm_txn_cat_id
				+ ", mm_txn_tag_ids=" + mm_txn_tag_ids + ", mm_txn_done_at=" + mm_txn_done_at + ", mm_txn_desc="
				+ mm_txn_desc + ", mm_txn_source_account=" + mm_txn_source_account + ", mm_txn_target_account="
				+ mm_txn_target_account + "]";
	}
	}
	
	