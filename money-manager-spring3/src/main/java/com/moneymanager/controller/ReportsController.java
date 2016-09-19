package com.moneymanager.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.moneymanager.form.ReportsForm;
import com.moneymanager.service.ReportsService;

@Controller
@RequestMapping("reports")
public class ReportsController {

    @Autowired
    private ReportsService reportsService;

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView loadReportsPage() {
        System.out.println("[ReportsController][loadReportsPage] Rendering 'Reports' Page...");
        return new ModelAndView("reports", "reportsModel", new ReportsForm());
    }

    @RequestMapping(method = RequestMethod.POST)
    public @ResponseBody Map<String, List<?>> processReportForm(@ModelAttribute("reportsModel") ReportsForm reportsForm) {
        System.out.println("[ReportsController][processReportForm] Processing Report Form...");
        System.out.println("[ReportsController][processReportForm] " + reportsForm);

        Map<String, Double> xxx = reportsService.getCategoryWiseTxnDetails();
        Map<String, List<?>> yyy = new HashMap<String, List<?>>();

        yyy.put("categories", new ArrayList<String>(xxx.keySet()));
        yyy.put("percentages", new ArrayList<Double>(xxx.values()));

        return yyy;
    }
}