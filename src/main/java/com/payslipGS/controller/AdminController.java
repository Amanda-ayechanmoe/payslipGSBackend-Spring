package com.payslipGS.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;
import com.payslipGS.services.PayslipService;
import com.payslipGS.services.UserService;

@Controller
public class AdminController {
	
	User user=new User();
	
	@Autowired
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Autowired
	private PayslipService paySlipService;

	public PayslipService getPaySlipService() {
		return paySlipService;
	}

	public void setPaySlipService(PayslipService paySlipService) {
		this.paySlipService = paySlipService;
	}

	

	@RequestMapping("/userRegister")
	public ModelAndView userRegister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("userRegister");
		return mv;
	}
	
	@RequestMapping(value="userRegister", method=RequestMethod.POST)
	public ModelAndView registeredUser(@ModelAttribute("user")User user,ModelMap model) {
		long result=userService.save(user);
		model.addAttribute("result","User created with ID:"+result);
		ModelAndView mv=new ModelAndView();
		List<User> listUser=userService.getAllUser();
		mv.setViewName("adminHome");
		mv.addObject("listUser", listUser);
		mv.addObject("message","New User is successfully created");
		return mv;
		
	}
	

	@RequestMapping("/editUser")
	public ModelAndView editUser(@RequestParam(value="id",required=false)Integer userId) {
		ModelAndView mv = new ModelAndView();
		user=userService.getUserbyId(userId);
		mv.setViewName("userEdit");
		mv.addObject("user",user);
		return mv;
	}
	
	@RequestMapping(value="/userUpdate",method=RequestMethod.POST)
	public ModelAndView userUpdate(@ModelAttribute("user")User user,ModelMap model) {
		ModelAndView mv = new ModelAndView();
		userService.updateUser(user);
		int userId=user.getUserId();
		List<User> listUser=userService.getAllUser();
		mv.setViewName("adminHome");
		mv.addObject("listUser", listUser);
		mv.addObject("message","User ID "+userId+" is successfully updated");
		return mv;
	}
	

	@RequestMapping("/deleteUser")
	public ModelAndView deleteUser(@RequestParam(value="id",required=false) Integer userId) {
		ModelAndView mv = new ModelAndView();
		List<PaySlip> payslipList=userService.getPayslipbyUserId(userId);
		if(payslipList!=null && payslipList.size()>0) {
			userService.deletePaySlipByuserId(payslipList);
			
		}else {
			userService.deleteUser(userId);
			
		}
		
		
		List<User> listUser=userService.getAllUser();
		mv.setViewName("adminHome");
		mv.addObject("listUser", listUser);
		mv.addObject("message","User ID "+userId+" is successfully deleted");
		return mv;
	}
	
	@RequestMapping("/issuePayslip")
	public ModelAndView issuePayslip(@RequestParam(value="id",required=false)Integer userId) {
		ModelAndView mv = new ModelAndView();
		user=userService.getUserbyId(userId);
		mv.setViewName("issuePayslip");
		mv.addObject("user",user);
		return mv;
	}
	
	@RequestMapping(value="/savePayslip",method=RequestMethod.POST)
	public ModelAndView savePayslip(@ModelAttribute("paySlip")PaySlip paySlip,ModelMap model) {
		ModelAndView mv=new ModelAndView();
		paySlip.setUser(user);
		paySlipService.save(paySlip);
		List<User> listUser=userService.getAllUser();
		mv.setViewName("adminHome");
		mv.addObject("listUser", listUser);
		mv.addObject("message","Payslip for "+user.getName()+" is successfully created.");
		return mv;
	}
	
}
