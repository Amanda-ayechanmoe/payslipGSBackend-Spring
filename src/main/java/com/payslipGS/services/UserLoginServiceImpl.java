package com.payslipGS.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payslipGS.dao.UserLoginDao;

@Service
public class UserLoginServiceImpl implements UserLoginService{
	
	@Autowired
	UserLoginDao userLoginDao;

	@Override
	public boolean findUser(String username, String password) {
		return userLoginDao.findUser(username, password);
	}

}
