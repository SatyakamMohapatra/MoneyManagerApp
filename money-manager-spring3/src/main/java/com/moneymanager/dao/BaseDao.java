package com.moneymanager.dao;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class BaseDao extends JdbcDaoSupport {
	
	@Autowired
	private DataSource dataSource;
	
	@PostConstruct
	private void init() {
		System.out.println("[BaseDao][init] Set the datasource : " + dataSource);
		setDataSource(dataSource);
	}
}