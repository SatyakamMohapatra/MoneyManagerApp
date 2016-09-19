package com.moneymanager.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.dao.LoginDao;
import com.moneymanager.dto.LoginDto;
import com.moneymanager.form.LoginForm;
import com.moneymanager.service.LoginService;
import com.moneymanager.util.EncryptDecryptUtil;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Override
	public boolean validateUserCredentials(LoginForm loginForm) throws Exception {
		boolean isValidUser = false;
		
		LoginDto loginDto = loginDao.validateUserCredentials(loginForm);
		System.out.println("[LoginServiceImpl][validateUserCredentials] " + loginDto);
		System.out.println("[LoginServiceImpl][validateUserCredentials] Encrypted Password from DB : " + loginDto.getPassword());
		
		String decryptedPassword = EncryptDecryptUtil.decryptPassword(loginDto.getPassword());
		System.out.println("[LoginServiceImpl][validateUserCredentials] Password from Form : " + loginForm.getLoginPassword());
		System.out.println("[LoginServiceImpl][validateUserCredentials] Password after Decryption : " + decryptedPassword);
		
		if (decryptedPassword.equals(loginForm.getLoginPassword())) {
			isValidUser = true;
		}
		
		return isValidUser;
	}
}