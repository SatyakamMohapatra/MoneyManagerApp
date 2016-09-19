package com.moneymanager.service;

import java.util.List;
import java.util.Map;

import com.moneymanager.dto.AccountDto;
import com.moneymanager.form.AccountsForm;

public interface AccountsService {
	
	Map<String, List<AccountDto>> getAccountDetails(int userId);
	
	int createNewAccount(AccountsForm newAccountForm);
}