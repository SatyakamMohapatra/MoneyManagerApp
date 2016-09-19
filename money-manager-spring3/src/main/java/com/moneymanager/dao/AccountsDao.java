package com.moneymanager.dao;

import java.util.List;

import com.moneymanager.dto.AccountDto;
import com.moneymanager.form.AccountsForm;

public interface AccountsDao {
	
	List<AccountDto> getAccountDetails(int userId);
	
	int createNewAccount(AccountsForm newAccountForm);
}