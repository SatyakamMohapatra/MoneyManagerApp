package com.moneymanager.form;

public class LoginForm {
	
	private String loginEmailId;
	private String loginPassword;
	
	/**
	 * @return the loginEmailId
	 */
	public String getLoginEmailId() {
		return loginEmailId;
	}
	/**
	 * @param loginEmailId the loginEmailId to set
	 */
	public void setLoginEmailId(String loginEmailId) {
		this.loginEmailId = loginEmailId;
	}
	/**
	 * @return the loginPassword
	 */
	public String getLoginPassword() {
		return loginPassword;
	}
	/**
	 * @param loginPassword the loginPassword to set
	 */
	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "LoginForm [\n" + 
					"\tloginEmailId='" + loginEmailId + "',\n" + 
					"\tloginPassword='" + loginPassword + "'\n" + 
				"]";
	}
}