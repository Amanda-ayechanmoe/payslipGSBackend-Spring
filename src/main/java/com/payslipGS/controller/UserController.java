package com.payslipGS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payslipGS.services.PayslipService;
import com.payslipGS.services.UserService;
import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

@Controller
public class UserController {
	
	@Autowired
	PayslipService payslipService;

	
	
	public PayslipService getPayslipService() {
		return payslipService;
	}



	public void setPayslipService(PayslipService payslipService) {
		this.payslipService = payslipService;
	}



	@RequestMapping("/userPayslipDetail")
	public ModelAndView userPayslipDetail(@RequestParam(value="id",required=false) Integer payslipId) {
		ModelAndView mv=new ModelAndView();
		PaySlip payslip=payslipService.getPayslipById(payslipId);
		User user=payslipService.getUserbyPaySlip(payslip);
		mv.setViewName("userPayslipDetail");
		mv.addObject("payslipInfo", payslip);
		mv.addObject("userInfo", user);
		return mv;
	}
}
