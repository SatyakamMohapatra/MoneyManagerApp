package com.moneymanager.dao.impl;

import org.springframework.stereotype.Repository;

import com.moneymanager.dao.BaseDao;
import com.moneymanager.dao.RegistrationDao;
import com.moneymanager.form.RegistrationForm;

@Repository
public class RegistrationDaoImpl extends BaseDao implements RegistrationDao {
	
	int dataInsertStatus = 0;
	
	@Override
	public int registerUser(RegistrationForm registrationForm) {
		System.out.println("[RegistrationDaoImpl][registerUser] Inserting new user details into database...");
		System.out.println(registrationForm);
		
		// SQL query to INSERT data into MM_USER table
		StringBuffer sb = new StringBuffer();
		sb.append("INSERT INTO mm_user ");
		sb.append("(mm_user_name, mm_user_password, mm_user_email, mm_user_contact_no, ");
		sb.append(" mm_user_registered_ts, mm_user_lastaccessed_ts, mm_user_status) ");
		sb.append("VALUES (?, ?, ?, ?, ?, ?, ?)");
		
		try {
			dataInsertStatus = getJdbcTemplate().update(sb.toString(),
					new Object[] {
						registrationForm.getUsername(),
						registrationForm.getPassword(),
						registrationForm.getEmailId(),
						registrationForm.getContactNo(),
						"2016-06-07 14:23:30.773",
						"2016-06-07 14:23:30.773",
						"REGISTERED"
					}
			);
		}
		catch (Exception e) {
			System.err.println("[RegistrationDaoImpl][registerUser] Exception : " + e);
		}
		
		return dataInsertStatus;
	}
}