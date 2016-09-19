package com.moneymanager.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.constants.MoneyManagerConstants;
import com.moneymanager.form.LoginForm;
import com.moneymanager.form.RegistrationForm;
import com.moneymanager.service.LoginService;

@Controller
@RequestMapping("login")
public class LoginController {

    @Autowired
    @SuppressWarnings("unused")
    private LoginService loginService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView loadLoginPage() {
        System.out.println("[LoginController][loadLoginPage] Rendering Login Page...");

        ModelAndView loginRegisterPage = new ModelAndView("login");
        loginRegisterPage.addObject("loginModel", new LoginForm());
        loginRegisterPage.addObject("registrationModel", new RegistrationForm());

        return loginRegisterPage;
    }

    @RequestMapping(method = RequestMethod.POST)
    public String processLoginForm(@ModelAttribute("loginModel") LoginForm loginForm, @ModelAttribute("registrationModel") RegistrationForm registrationForm, BindingResult bindingResult) {
        System.out.println("[LoginController][processLoginForm] Processing Login Form...");
        System.out.println("[LoginController][processLoginForm] " + loginForm);

        String viewName = MoneyManagerConstants.EMPTY_STRING;

        // boolean isValidUser =
        // loginService.validateUserCredentials(loginForm);
        boolean isValidUser = true;
        System.out.println("[LoginController][processLoginForm] Is A Valid User : " + isValidUser);

        if (isValidUser) {
            viewName = "redirect:accountsviewall";
            System.out.println("[LoginController][processLoginForm] Redirecting to 'AccountsViewAll' page...");
        } else {
            viewName = "login";
            System.out.println("[LoginController][processLoginForm] Reloading to 'Login' page...");
        }

        return viewName;
    }
}