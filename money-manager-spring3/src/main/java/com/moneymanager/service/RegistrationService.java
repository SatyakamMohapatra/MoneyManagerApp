package com.moneymanager.service;

import com.moneymanager.form.RegistrationForm;

public interface RegistrationService {
	
	int registerUser(RegistrationForm registrationForm) throws Exception;
}