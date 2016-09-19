package com.moneymanager.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.dto.AccountDto;
import com.moneymanager.form.AccountsForm;
import com.moneymanager.service.AccountsService;

@Controller
public class AccountsController {
	
	@Autowired
	private AccountsService accountsService;
	
	@RequestMapping(value = "/accountsviewall", method = RequestMethod.GET)
	public ModelAndView loadAccountsViewAllPage(HttpSession session) {
		System.out.println("[AccountsController][loadAccountsViewAllPage] Rendering 'Accounts View All' Page...");
		
		Map<String, List<AccountDto>> accountDtoMap = accountsService.getAccountDetails(1);
		session.setAttribute("session_accountDtoMap", accountDtoMap);
		
		return new ModelAndView("accountsviewall", "accountDtoMap", accountDtoMap);
	}
	
	@RequestMapping(value = "/accountsnew", method = RequestMethod.GET)
	public ModelAndView loadAccountsNewPage() {
		System.out.println("[AccountsController][loadAccountsNewPage] Rendering 'New Account' Page...");
		return new ModelAndView("accountsnew", "newAccountModel", new AccountsForm());
	}
	
	@RequestMapping(value = "/accountsnew", method = RequestMethod.POST)
	public String createNewAccount(@ModelAttribute("newAccountModel") AccountsForm newAccountForm) {
		System.out.println("[AccountsController][CreatNewAccount] Creating New Account...");
		System.out.println(newAccountForm);
		
		int isAccountCreationSuccess = accountsService.createNewAccount(newAccountForm);
		System.out.println("[AccountsController][CreatNewAccount] New Account Creation Status : " + isAccountCreationSuccess);
		
		return "redirect:accountsviewall";
	}
}