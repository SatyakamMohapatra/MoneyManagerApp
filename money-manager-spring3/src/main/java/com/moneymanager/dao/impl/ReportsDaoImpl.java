package com.moneymanager.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import com.moneymanager.dao.BaseDao;
import com.moneymanager.dao.ReportsDao;

@Repository
public class ReportsDaoImpl extends BaseDao implements ReportsDao {

    /*
     * (non-Javadoc)
     * 
     * @see com.moneymanager.dao.ReportsDao#getTransactionsTotal()
     */
    @Override
    public double getTransactionsTotal() {
        StringBuffer sb = new StringBuffer();
        sb.append("SELECT SUM(mm_txn_amount) ");
        sb.append("FROM mm_txn_master ");
        sb.append("WHERE ? ");
        sb.append(" ");
        sb.append(" ");

        return getJdbcTemplate().queryForObject(sb.toString(), double.class, new Object[] {});
    }

    /*
     * (non-Javadoc)
     * 
     * @see com.moneymanager.dao.ReportsDao#sumOfCategoryList()
     */
    @Override
    public Map<String, Object> getTransactionSumByCategory() {
        StringBuffer sb = new StringBuffer();
        sb.append("SELECT mm_cat_name, SUM(mm_txn_amount) AS mm_cat_sum ");
        sb.append("FROM mm_txn_master t ");
        sb.append("JOIN mm_cat_master c ");
        sb.append("ON t.mm_txn_cat_id = c.mm_cat_id ");
        sb.append("GROUP BY t.mm_txn_cat_id ");

        return getJdbcTemplate().queryForMap(sb.toString(), new Object[] {}, new int[] {});
    }
}