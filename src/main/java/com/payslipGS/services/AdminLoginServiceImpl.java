package com.payslipGS.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payslipGS.dao.AdminLoginDao;

@Service
public class AdminLoginServiceImpl implements AdminLoginService{
	@Autowired
	AdminLoginDao adminLoginDao;

	@Override
	public boolean findAdmin(String username, String password) {
		
		return adminLoginDao.findAdmin(username, password);
	}

}
