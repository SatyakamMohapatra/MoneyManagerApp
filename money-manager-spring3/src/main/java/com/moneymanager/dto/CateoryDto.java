package com.moneymanager.dto;

public class CateoryDto {
  
  private int cat_id;
  private String cat_name,cat_description,cat_icon;
	
    /**
	 * @return the cat_id
	 */
	public int getCat_id() {
		return cat_id;
	}
	/**
	 * @param cat_id the cat_id to set
	 */
	public void setCat_id(int cat_id) {
		this.cat_id = cat_id;
	}
	/**
	 * @return the cat_name
	 */
	public String getCat_name() {
		return cat_name;
	}
	/**
	 * @param cat_name the cat_name to set
	 */
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	/**
	 * @return the cat_description
	 */
	public String getCat_description() {
		return cat_description;
	}
	/**
	 * @param cat_description the cat_description to set
	 */
	public void setCat_description(String cat_description) {
		this.cat_description = cat_description;
	}
	/**
	 * @return the cat_icon
	 */
	public String getCat_icon() {
		return cat_icon;
	}
	/**
	 * @param cat_icon the cat_icon to set
	 */
	public void setCat_icon(String cat_icon) {
		this.cat_icon = cat_icon;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Category [cat_id=" + cat_id + ", cat_name=" + cat_name + ", cat_description=" + cat_description
				+ ", cat_icon=" + cat_icon + "]";
	}
	
	
	  
  
}
