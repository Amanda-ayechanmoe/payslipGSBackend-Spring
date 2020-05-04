package com.payslipGS.services;

import java.util.List;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

public interface UserService {

	public long save(User user);
	public List<User> getAllUser();
	public void deleteUser(int userId);
	public User getUserbyId(int userId);
	public void updateUser(User user);
	public List<PaySlip> getPayslipbyUserId(int userId);
	public void deletePaySlipByuserId(List<PaySlip> payslip);
	public Integer getUserbyLogin(String username,String password);
}
