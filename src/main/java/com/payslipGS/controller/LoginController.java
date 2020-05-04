package com.payslipGS.controller;

import java.util.List;

import org.apache.catalina.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payslipGS.model.Admin;
import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;
import com.payslipGS.services.AdminLoginService;
import com.payslipGS.services.UserLoginService;
import com.payslipGS.services.UserService;

@Controller
public class LoginController {

	@Autowired
	AdminLoginService adminLoginService;
	
	public AdminLoginService getAdminLoginService() {
		return adminLoginService;
	}

	public void setAdminLoginService(AdminLoginService adminLoginService) {
		this.adminLoginService = adminLoginService;
	}
	
	@Autowired
	UserLoginService userLoginService;

	public UserLoginService getUserLoginService() {
		return userLoginService;
	}

	public void setUserLoginService(UserLoginService userLoginService) {
		this.userLoginService = userLoginService;
	}
	
	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	

	@RequestMapping("/adminLogin")
	public ModelAndView adminLogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminLogin");
		
		return mv;
	}
	
	@RequestMapping(value="adminRequest", method=RequestMethod.POST)
	public ModelAndView adminRequest(@ModelAttribute("admin")Admin admin,ModelMap model) {
		ModelAndView mv=new ModelAndView();
		String username=admin.getUsername();
		String password=admin.getPassword();
		boolean isValid=adminLoginService.findAdmin(username, password);
		if (isValid) {
			//mv.setViewName("adminHome");
			List<User> listUser=userService.getAllUser();
			mv.setViewName("adminHome");
			mv.addObject("listUser", listUser);
			mv.addObject("admin","Welcome "+username);

			
		}else {
			mv.setViewName("adminLogin");
			mv.addObject("error","Username or Password is incorrect");
			
		}
		
		return mv;
	
	}
	
	@RequestMapping("/userLogin")
	public ModelAndView userLogin() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("userLogin");
		
		return mv;
	}
	
	@RequestMapping(value="userRequest",method=RequestMethod.POST)
	public ModelAndView userRequest(@ModelAttribute("user")User user,ModelMap model) {
		ModelAndView mv=new ModelAndView();
		String username=user.getUsername();
		String password=user.getPassword();
		boolean isValid=userLoginService.findUser(username, password);
		if (isValid) {
			//mv.setViewName("userHome");
			mv.addObject("user","Welcome "+username);
			int userId=userService.getUserbyLogin(username, password);
			List<PaySlip> payslipList=userService.getPayslipbyUserId(userId);
			mv.setViewName("userHome");
			mv.addObject("payslipList",payslipList);
			mv.addObject("message", userId);
			
		}else {
			mv.setViewName("userLogin");
			mv.addObject("error","Username or Password is incorrect");
			
		}
		
		return mv;
	
	}
	
	
}
