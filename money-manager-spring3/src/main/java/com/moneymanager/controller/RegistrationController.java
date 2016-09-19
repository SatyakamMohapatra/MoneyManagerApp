package com.moneymanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.moneymanager.form.RegistrationForm;
import com.moneymanager.service.RegistrationService;

@Controller
@RequestMapping("register")
public class RegistrationController {
	
	@Autowired
	private RegistrationService registrationService;
	
	@RequestMapping(method = RequestMethod.POST)
	public String processRegistrationPage(@ModelAttribute("registrationModel") RegistrationForm registrationForm) throws Exception {
		System.out.println("[RegistrationController][processRegistrationPage] Processing Registration Page...");
		System.out.println(registrationForm);
		
		registrationService.registerUser(registrationForm);
		
		return "redirect:login";
	}
}