package com.moneymanager.service;

import com.moneymanager.form.LoginForm;

public interface LoginService {
	
	boolean validateUserCredentials(LoginForm loginForm) throws Exception;
}