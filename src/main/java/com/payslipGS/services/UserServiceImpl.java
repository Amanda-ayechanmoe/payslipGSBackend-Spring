package com.payslipGS.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.payslipGS.dao.UserDao;
import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	@Transactional
	public long save(User user) {
		// To include business logic
		return userDao.create(user);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userDao.list();
	}

	@Override
	public void deleteUser(int userId) {
		userDao.delete(userId);

	}

	@Override
	public User getUserbyId(int userId) {

		return userDao.get(userId);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userDao.update(user);
		
	}

	@Override
	public List<PaySlip> getPayslipbyUserId(int userId) {
		return userDao.getPayslipbyUserid(userId);
	}

	@Override
	public void deletePaySlipByuserId(List<PaySlip> payslip) {
		userDao.deletePayslipbyUserId(payslip);
		
	}

	@Override
	public Integer getUserbyLogin(String username, String password) {
		return userDao.getUserbyLogin(username, password);
	}

}
