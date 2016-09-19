package com.moneymanager.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.dao.RegistrationDao;
import com.moneymanager.form.RegistrationForm;
import com.moneymanager.service.RegistrationService;
import com.moneymanager.util.EncryptDecryptUtil;

@Service
public class RegistrationServiceImpl implements RegistrationService {
	
	@Autowired
	private RegistrationDao registrationDao;
	
	@Override
	public int registerUser(RegistrationForm registrationForm) throws Exception {
		String encryptedPassword = EncryptDecryptUtil.decryptPassword(registrationForm.getPassword());
		registrationForm.setPassword(encryptedPassword);
		
		return registrationDao.registerUser(registrationForm);
	}
}