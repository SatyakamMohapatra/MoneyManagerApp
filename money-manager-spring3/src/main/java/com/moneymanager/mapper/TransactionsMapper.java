package com.moneymanager.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.moneymanager.dto.TransactionsDto;

public class TransactionsMapper implements RowMapper<TransactionsDto> {
	
	@Override
	public TransactionsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		TransactionsDto transactionsDto = new TransactionsDto();
		transactionsDto.setMm_txn_id(rs.getString("mm_txn_id"));
		transactionsDto.setMm_txn_name(rs.getString("mm_txn_name"));
		transactionsDto.setMm_txn_type(rs.getString("mm_txn_type"));
		transactionsDto.setMm_txn_user_id(rs.getInt("mm_txn_user_id"));
		transactionsDto.setMm_txn_cat_id(rs.getString("mm_txn_cat_id"));
		transactionsDto.setMm_txn_tag_ids(rs.getString("mm_txn_tag_ids"));
		transactionsDto.setMm_txn_done_at(rs.getInt("mm_txn_done_at"));
		transactionsDto.setMm_txn_desc(rs.getString("mm_txn_desc"));
		transactionsDto.setMm_txn_source_account(rs.getString("mm_txn_source_account"));
		transactionsDto.setMm_txn_target_account(rs.getString("mm_txn_target_account"));
		
		return transactionsDto;
	}
}