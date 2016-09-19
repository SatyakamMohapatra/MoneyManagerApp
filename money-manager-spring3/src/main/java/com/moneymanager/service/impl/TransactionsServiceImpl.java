package com.moneymanager.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.moneymanager.dao.TransactionsDao;
import com.moneymanager.dto.TransactionsDto;
import com.moneymanager.form.CreateTransactionForm;
import com.moneymanager.form.ViewTransactionsForm;
import com.moneymanager.service.TransactionsService;
import com.moneymanager.util.DateUtil;

@Service
public class TransactionsServiceImpl implements TransactionsService {

    @Autowired
    private TransactionsDao transactionsDao;

    @Override
    public int createNewTransaction(CreateTransactionForm newTransactionForm) {
        if (!newTransactionForm.getTxnType().equals("BankToBankTransfer")) {
            newTransactionForm.setTxnDestAcc("");
        }

        return transactionsDao.createNewTransaction(newTransactionForm);
    }

    @Override
    public List<TransactionsDto> getTransactionDetails(ViewTransactionsForm viewTransactionsForm) {
        viewTransactionsForm.setViewTxnsStartDate(DateUtil.convertDate(viewTransactionsForm.getViewTxnsStartDate()));
        viewTransactionsForm.setViewTxnsStartDate(DateUtil.convertDate(viewTransactionsForm.getViewTxnsStartDate()));
        viewTransactionsForm.setViewTxnsDate(DateUtil.convertDate(viewTransactionsForm.getViewTxnsDate()));

        // If user has selected view transaction type as "For a period" no need
        // to do anything

        // If user has selected view transaction type as "for a day" no need to
        // do anything
        if (viewTransactionsForm.getViewTxnsForType() == 2) {
            viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsDate() + " 00:00:00.00");
            viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsDate() + " 23:59:59.999");
        }

        // If the user has selected view transaction duration as "For a month"
        String[] month_31 = new String[] { "1", "3", "5", "7", "8", "10", "12" };
        String[] month_30 = new String[] { "4", "6", "9", "11" };

        if (viewTransactionsForm.getViewTxnsForType() == 3) {
            if (Arrays.asList(month_30).contains(viewTransactionsForm.getViewTxnsMonth())) {
                viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsYear() + "-0" + viewTransactionsForm.getViewTxnsMonth() + "-01" + " 00:00:00.00");
                viewTransactionsForm.setViewTxnsEndDate(viewTransactionsForm.getViewTxnsYear() + "-0" + viewTransactionsForm.getViewTxnsMonth() + "-30" + " 23:59:59.999");
                viewTransactionsForm.setViewTxnsDate(null);
            } else if (Arrays.asList(month_31).contains(viewTransactionsForm.getViewTxnsMonth())) {
                viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsYear() + "-0" + viewTransactionsForm.getViewTxnsMonth() + "-01" + " 00:00:00.00");
                viewTransactionsForm.setViewTxnsEndDate(viewTransactionsForm.getViewTxnsYear() + "-0" + viewTransactionsForm.getViewTxnsMonth() + "-31" + " 23:59:59.999");
                viewTransactionsForm.setViewTxnsDate(null);
            }
        }

        // If user has selected view transaction type as "For a Year"
        if (viewTransactionsForm.getViewTxnsForType() == 4) {
            viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsYear() + "-01-01" + " 00:00:00.00");
            viewTransactionsForm.setViewTxnsStartDate(viewTransactionsForm.getViewTxnsYear() + "-12-31" + " 23:59:59.999");
            viewTransactionsForm.setViewTxnsDate(null);
        }

        System.out.println("[TransactionsServiceImpl][getTransactionDetails] : " + viewTransactionsForm);

        return transactionsDao.getTransactionDetails(viewTransactionsForm);
    }
}