package com.moneymanager.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moneymanager.dao.AccountsDao;
import com.moneymanager.dao.BaseDao;
import com.moneymanager.dto.AccountDto;
import com.moneymanager.form.AccountsForm;
import com.moneymanager.mapper.AccountMapper;

@Repository
public class AccountsDaoImpl extends BaseDao implements AccountsDao {
	
	@Override
	public List<AccountDto> getAccountDetails(int userId) {
		System.out.println("[AccountsDaoImpl][getAccountDetails] Getting Account Details for User : " + userId);
		
		List<AccountDto> accountDtoLst = null;
		String sql = "SELECT " + 
						"mm_user_id, mm_user_account_name, mm_user_account_number, " + 
						"mm_user_account_type, mm_user_account_balance, mm_user_account_limit, " + 
						"mm_user_account_icon " + 
					 "FROM mm_user_accounts " + 
					 "WHERE mm_user_id = ?";
		
		try {
			accountDtoLst = getJdbcTemplate().query(sql, 
					new Object[] { userId }, 
					new AccountMapper());
		} catch (Exception e) {
			System.err.println("[AccountsDaoImpl][getAccountDetails] Exception : " + e);
		}
		
		return accountDtoLst;
	}
	
	@Override
	public int createNewAccount(final AccountsForm newAccountForm) {
		System.out.println("[AccountsDaoImpl][createNewAccount] Saving New Account Info...");
		
		int isInsertSuccess = -1;
		String sql = "INSERT INTO mm_user_accounts " + 
						"(mm_user_id, mm_user_account_name, mm_user_account_number, " + 
						" mm_user_account_type, mm_user_account_balance, mm_user_account_limit) " + 
					 "VALUES (?, ?, ?, ?, ?, ?)";
		
		try {
			isInsertSuccess = getJdbcTemplate().update(sql, 
					new Object[] { 
							12345,
							newAccountForm.getMmUserAccountName(), 
							newAccountForm.getMmUserAccountNumber(),
							newAccountForm.getMmUserAccountType(), 
							newAccountForm.getMmUserAccountBalance(),
							newAccountForm.getMmUserAccountLimit()
			});
		} catch (Exception e) {
			System.err.println("[AccountsDaoImpl][createNewAccount] Exception : " + e);
		}
		
		return isInsertSuccess;
	}
}