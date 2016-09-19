package com.moneymanager.dao;

import com.moneymanager.dto.LoginDto;
import com.moneymanager.form.LoginForm;

public interface LoginDao {
	
	LoginDto validateUserCredentials(LoginForm loginForm);
}