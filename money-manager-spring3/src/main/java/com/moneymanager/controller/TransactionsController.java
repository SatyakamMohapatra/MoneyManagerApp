package com.moneymanager.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.dto.TransactionsDto;
import com.moneymanager.form.CreateTransactionForm;
import com.moneymanager.form.ViewTransactionsForm;
import com.moneymanager.service.TransactionsService;

@Controller
public class TransactionsController {

    @Autowired
    private TransactionsService transactionsService;

    @RequestMapping(value = "/transactionsnew", method = RequestMethod.GET)
    public ModelAndView loadNewTrasactionPage() {
        System.out.println("[TransactionsController][loadNewTrasactionPage] Rendering 'New Transaction' Page...");
        return new ModelAndView("transactionsnew", "newTransactionModel", new CreateTransactionForm());
    }

    @RequestMapping(value = "/transactionsnew", method = RequestMethod.POST)
    public ModelAndView createNewTransaction(@ModelAttribute("newTransactionModel") CreateTransactionForm newTransactionForm, Model m) {
        System.out.println("[TransactionsController][createNewTransaction] Creating New Transaction...");
        System.out.println(newTransactionForm);

        int isInsertSuccess = transactionsService.createNewTransaction(newTransactionForm);
        System.out.println("[TransactionsController][createNewTransaction] New Transaction Creation Status : " + isInsertSuccess);

        if (isInsertSuccess >= 1) {
            m.addAttribute("message", "Transaction successfull");
        } else {
            m.addAttribute("message", "Transaction failed");
        }

        return new ModelAndView("transactionsnew", "newTransactionModel", new CreateTransactionForm());
    }

    @RequestMapping(value = "/transactionsViewAll", method = RequestMethod.GET)
    public ModelAndView loadViewTransactionsPage() {
        System.out.println("[TransactionsController][loadViewTransactionsPage] Rendering 'View Transactions' Page...");
        return new ModelAndView("transactionsviewall", "transactionmodel", new ViewTransactionsForm());
    }

    @RequestMapping(value = "/transactionsViewAll", method = RequestMethod.POST)
    public ModelAndView validateViewTransactionPage(@ModelAttribute("transactionmodel") ViewTransactionsForm viewTransactionModel) {
        System.out.println("[TransactionsController][validateViewTransactionPage] Validating View transactionview Page...");
        System.out.println(viewTransactionModel);

        List<TransactionsDto> transactionsDtoLst = transactionsService.getTransactionDetails(viewTransactionModel);
        System.out.println("[TransactionsController][validateViewTransactionPage] Retrieved Transactions for the selected duration...");
        System.out.println(transactionsDtoLst);

        return new ModelAndView("transactionsviewall", "transactionmodel", transactionsDtoLst);
    }
}