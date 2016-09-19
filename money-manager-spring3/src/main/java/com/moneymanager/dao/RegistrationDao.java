package com.moneymanager.dao;

import com.moneymanager.form.RegistrationForm;

public interface RegistrationDao {
	
	int registerUser(RegistrationForm registrationForm);
}