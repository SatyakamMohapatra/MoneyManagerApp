package com.moneymanager.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.moneymanager.dto.AccountDto;

public class AccountMapper implements RowMapper<AccountDto> {
	
	public AccountDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		AccountDto accountDto = new AccountDto();
		accountDto.setMmUserId(rs.getInt("mm_user_id"));
		accountDto.setMmUserAccountName(rs.getString("mm_user_account_name"));
		accountDto.setMmUserAccountNumber(rs.getString("mm_user_account_number"));
		accountDto.setMmUserAccountType(rs.getString("mm_user_account_type"));
		accountDto.setMmUserAccountBalance(rs.getDouble("mm_user_account_balance"));
		accountDto.setMmUserAccountLimit(rs.getDouble("mm_user_account_limit"));
		accountDto.setMmUserAccountIcon(rs.getString("mm_user_account_icon"));
		return accountDto;
	}
}