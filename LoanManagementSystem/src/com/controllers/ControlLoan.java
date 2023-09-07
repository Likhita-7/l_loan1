package com.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.entities.CustomerDetails;
import com.entities.LoanApplicants;
import com.entities.LoanNominee;
import com.execl.ExcelGenerator;
import com.services.ServiceClass;

@Controller
public class ControlLoan {
	ServiceClass ctrl;

	@Autowired
	public ControlLoan(ServiceClass ctrl) {
		this.ctrl = ctrl;
	}

	@RequestMapping(value = "/startpage", method = RequestMethod.GET)
	public String ttttt(Model model) {
		return "startpage";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String tt(Model model) {
		return "home";
	}

	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String Form1(CustomerDetails customerdetails, LoanNominee nominee, LoanApplicants loanApplicants,
			Model model) {
		ctrl.storeObj(customerdetails, loanApplicants, nominee);
		model.addAttribute("nom", nominee);
		model.addAttribute("cust", customerdetails);
		model.addAttribute("app", loanApplicants);

		return "preview";
	}

	@RequestMapping(value = "/submit", method = RequestMethod.GET)
	public String ttt(Model model) {
		ctrl.applyLoan();
		return "home";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String tttt(Model model) {
		List<LoanApplicants> lapp = ctrl.getAllApps();
		model.addAttribute("lapp", lapp);
		return "adminpage";
	}

	@RequestMapping(value = "/editdetails", method = RequestMethod.GET)
	public String attttt(LoanApplicants lap, Model model) {
		LoanApplicants lapp = ctrl.getLoan(lap.getLapp_id());
		model.addAttribute("editdetails", lapp);
		return "editdetails";
	}

	@RequestMapping(value = "/save", method = RequestMethod.GET)
	public String yttt(LoanApplicants lap, Model model) {
		System.out.println(lap.getLapp_conclusion_remarks());
		ctrl.update(lap);
		List<LoanApplicants> lapp = ctrl.getAllApps();
		model.addAttribute("lapp", lapp);
		return "adminpage";
	}

	@RequestMapping(value = "/downloadExcel", method = RequestMethod.GET)
	public void downloadExcel(HttpServletResponse response) throws IOException {
		List<LoanApplicants> lapp = ctrl.getAllApps();
		Workbook workbook = ExcelGenerator.generateExcel(lapp);

		// Set the response headers for Excel download
		response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
		response.setHeader("Content-Disposition", "attachment; filename=loan_applicants.xlsx");

		// Write the workbook to the response output stream
		workbook.write(response.getOutputStream());
		workbook.close();
	}

	@RequestMapping(value = "/filter", method = RequestMethod.GET)
	public String filter(@RequestParam String sel, Model model) {
		System.out.println("input" + sel);
		List<LoanApplicants> al = ctrl.selOption(sel);
		System.out.println("table" + al.get(0).getLapp_amount());
		model.addAttribute("lapp", al);
		return "adminpage";
	}

	@RequestMapping(value = "/checkloan", method = RequestMethod.GET)
	public String check(Model model) {

		return "checkloan";
	}
}
