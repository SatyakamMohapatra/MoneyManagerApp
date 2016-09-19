package com.moneymanager.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.stereotype.Repository;

import com.moneymanager.dao.BaseDao;
import com.moneymanager.dao.LoginDao;
import com.moneymanager.dto.LoginDto;
import com.moneymanager.form.LoginForm;

@Repository
public class LoginDaoImpl extends BaseDao implements LoginDao {
	
	@Override
	public LoginDto validateUserCredentials(LoginForm loginForm) {
		System.out.println("[LoginDaoImpl][validateUserCredentials] Validating User Credentials...");
		
		LoginDto loginDto = null;
		
		StringBuffer sb = new StringBuffer();
		sb.append("SELECT mm_user_name, mm_user_email, mm_user_password ");
		sb.append("FROM mm_user ");
		sb.append("WHERE mm_user_email = ? ");
		
		try {
			loginDto = getJdbcTemplate().query(sb.toString(), 
					new Object[] { 
							loginForm.getLoginEmailId().trim() 
					}, 
					new ResultSetExtractor<LoginDto>() {
						@Override
						public LoginDto extractData(ResultSet rs) throws SQLException, DataAccessException {
							LoginDto loginDto = new LoginDto();
							
							if (rs.next()) {
								loginDto.setUsername(rs.getString("mm_user_name"));
								loginDto.setEmailId(rs.getString("mm_user_email"));
								loginDto.setPassword(rs.getString("mm_user_password"));
							}
							
							return loginDto;
						}
					}
			);
		} catch (Exception e) {
			System.err.println("[LoginDaoImpl][validateUserCredentials] Exception : " + e);
		}
		
		return loginDto;
	}
}