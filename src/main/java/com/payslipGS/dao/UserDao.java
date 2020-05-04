package com.payslipGS.dao;

import java.util.List;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;
public interface UserDao {
	/*public List<User> list();
	public User get(int id);
	public void saveOrUpdate(User user);
	public void delete(long id);*/
	
	public Integer create(User user);
	public List<User> list();
	public void delete(int userId);
	public User get(int userId);
	public void update(User user);
	public List<PaySlip> getPayslipbyUserid(int userId);
	public void deletePayslipbyUserId(List<PaySlip> paySlip);
	public Integer getUserbyLogin(String username,String password);
	}
