package com.moneymanager.service;

import java.util.List;

import com.moneymanager.dto.TransactionsDto;
import com.moneymanager.form.CreateTransactionForm;
import com.moneymanager.form.ViewTransactionsForm;

public interface TransactionsService {

    int createNewTransaction(CreateTransactionForm newTransactionForm);

    List<TransactionsDto> getTransactionDetails(ViewTransactionsForm viewTransactionForm);
}