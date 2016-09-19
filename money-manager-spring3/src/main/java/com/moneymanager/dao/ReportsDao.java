package com.moneymanager.dao;

import java.util.Map;

public interface ReportsDao {

    /**
     * @return Sum of all transactions for the sepecified period
     */
    double getTransactionsTotal();

    /**
     * @return
     */
    Map<String, Object> getTransactionSumByCategory();
}