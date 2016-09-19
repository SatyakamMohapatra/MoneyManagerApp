package com.moneymanager.service.impl;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.dao.ReportsDao;
import com.moneymanager.service.ReportsService;

@Service
public class ReportsServiceImpl implements ReportsService {

    @Autowired
    @SuppressWarnings("unused")
    private ReportsDao reportsDao;

    @Override
    public Map<String, Double> getCategoryWiseTxnDetails() {
        // double totalAmt = reportsDao.getTransactionsTotal();

        // Map<String, Object> xxx = reportsDao.getTransactionSumByCategory();
        Map<String, Double> yyy = new HashMap<String, Double>();

        /*
         * for (Map.Entry<String, Object> entrySet : xxx.entrySet()) { double
         * catTotalPer = ((double) entrySet.getValue() / totalAmt) * 100;
         * 
         * yyy.put(entrySet.getKey(), catTotalPer); }
         */
        yyy.put("Fuel", (double) 4);
        yyy.put("Loans", (double) 20);
        yyy.put("Education", (double) 30);
        yyy.put("Entertainment", (double) 10);
        yyy.put("Groceries", (double) 18);
        yyy.put("Credit Card", (double) 15);
        yyy.put("Shopping", (double) 3);

        return yyy;
    }
}