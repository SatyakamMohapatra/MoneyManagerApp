package com.moneymanager.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.moneymanager.dao.BaseDao;
import com.moneymanager.dao.TransactionsDao;
import com.moneymanager.dto.TransactionsDto;
import com.moneymanager.form.CreateTransactionForm;
import com.moneymanager.form.ViewTransactionsForm;
import com.moneymanager.mapper.TransactionsMapper;

@Repository
public class TransactionsDaoImpl extends BaseDao implements TransactionsDao {

    @Override
    public int createNewTransaction(CreateTransactionForm newTransactionForm) {
        System.out.println("[TransactionsDaoImpl][createNewTransaction] Creating a new Transaction for : xxx");

        int isInsertSuccess = -1;
        String query = "INSERT INTO mm_txn_master " + "(mm_txn_name, mm_txn_cat_id, mm_txn_type, mm_txn_tag_ids, " + " mm_txn_done_at, mm_txn_desc, mm_txn_user_id, mm_txn_source_account, " + " mm_txn_target_account) " + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        try {
            isInsertSuccess = getJdbcTemplate().update(query,
                            new Object[] { newTransactionForm.getTxnName(), 1, newTransactionForm.getTxnType(), newTransactionForm.getTxnTags(), newTransactionForm.getTxnDate(), newTransactionForm.getTxnDesc(), 45678, newTransactionForm.getTxnSourceAcc(), newTransactionForm.getTxnDestAcc() });
        } catch (Exception e) {
            System.err.println("[TransactionsDaoImpl][createNewTransaction] Exception : " + e);
        }

        return isInsertSuccess;
    }

    @Override
    public List<TransactionsDto> getTransactionDetails(ViewTransactionsForm viewTransactionsForm) {
        System.out.println("[TransactionsDaoImpl][getTransactionDetails] Getting Transactions for : xxx");

        StringBuffer query = new StringBuffer();
        query.append("SELECT * ");
        query.append("FROM mm_txn_master ");
        query.append("WHERE mm_txn_user_id = ? ");
        query.append("AND mm_txn_done_at BETWEEN ? AND ? ");

        Object[] argsObjArray = new Object[5];
        argsObjArray[0] = "12345";
        argsObjArray[1] = viewTransactionsForm.getViewTxnsStartDate();
        argsObjArray[2] = viewTransactionsForm.getViewTxnsStartDate();

        if (!viewTransactionsForm.getViewTxnsByCategory().equals("0") && !viewTransactionsForm.getViewTxnsByTags().equals("0")) {
            query.append("AND mm_txn_cat_id = ? ");
            query.append("AND mm_txn_tag_ids = ? ");
            argsObjArray[3] = viewTransactionsForm.getViewTxnsByCategory();
            argsObjArray[4] = viewTransactionsForm.getViewTxnsByTags();
        } else if (!viewTransactionsForm.getViewTxnsByCategory().equals("0")) {
            query.append("AND mm_txn_cat_id = ? ");
            argsObjArray[3] = viewTransactionsForm.getViewTxnsByCategory();
        } else if (!viewTransactionsForm.getViewTxnsByTags().equals("0")) {
            query.append("AND mm_txn_tag_ids = ? ");
            argsObjArray[4] = viewTransactionsForm.getViewTxnsByTags();
        }

        return getJdbcTemplate().query(query.toString(), argsObjArray, new TransactionsMapper());
    }
}