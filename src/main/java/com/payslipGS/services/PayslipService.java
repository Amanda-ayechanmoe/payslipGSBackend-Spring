package com.payslipGS.services;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

public interface PayslipService {

	public void save(PaySlip paySlip);
	public PaySlip getPayslipById(int id);
	public User getUserbyPaySlip(PaySlip paySlip);
}
