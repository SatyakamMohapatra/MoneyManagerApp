package com.moneymanager.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.dao.AccountsDao;
import com.moneymanager.dto.AccountDto;
import com.moneymanager.form.AccountsForm;
import com.moneymanager.service.AccountsService;

@Service
public class AccountsServiceImpl implements AccountsService {
	
	@Autowired
	private AccountsDao accountsDao;
	
	@Override
	public Map<String, List<AccountDto>> getAccountDetails(int userId) {
		List<AccountDto> accountDtoLst = accountsDao.getAccountDetails(userId);
		
		List<AccountDto> accountsLst = new ArrayList<AccountDto>();
		List<AccountDto> cardsLst = new ArrayList<AccountDto>();
		List<AccountDto> loansLst = new ArrayList<AccountDto>();
		
		for (int i = 0; i < accountDtoLst.size(); i++) {
			switch (accountDtoLst.get(i).getMmUserAccountType()) {
				case "Accounts":
					accountsLst.add(accountDtoLst.get(i));
					break;
				case "Cards":
					cardsLst.add(accountDtoLst.get(i));
					break;
				case "Loans":
					loansLst.add(accountDtoLst.get(i));
					break;
			}
		}
		
		Map<String, List<AccountDto>> accountDtoMap = new HashMap<String, List<AccountDto>>();
		accountDtoMap.put("accountsLst", accountsLst);
		accountDtoMap.put("cardsLst", cardsLst);
		accountDtoMap.put("loansLst", loansLst);
		
		return accountDtoMap;
	}
	
	@Override
	public int createNewAccount(AccountsForm newAccountForm) {
		return accountsDao.createNewAccount(newAccountForm);
	}
}