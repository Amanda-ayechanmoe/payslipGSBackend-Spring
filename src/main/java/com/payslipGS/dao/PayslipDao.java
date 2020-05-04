package com.payslipGS.dao;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

public interface PayslipDao {

	public void create(PaySlip paySlip);
	public PaySlip getPayslipById(int id);
	public User getUserbyPaySlip(PaySlip paySlip);
}
