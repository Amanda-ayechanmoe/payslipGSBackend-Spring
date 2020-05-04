package com.payslipGS.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payslipGS.dao.PayslipDao;
import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

@Service
public class PayslipServiceImpl implements PayslipService {

	@Autowired
	PayslipDao paySlipDao;

	public PayslipDao getPaySlipDao() {
		return paySlipDao;
	}

	public void setPaySlipDao(PayslipDao paySlipDao) {
		this.paySlipDao = paySlipDao;
	}

	@Override
	public void save(PaySlip paySlip) {

		paySlipDao.create(paySlip);
	}

	@Override
	public PaySlip getPayslipById(int id) {
		return paySlipDao.getPayslipById(id);
	}

	@Override
	public User getUserbyPaySlip(PaySlip paySlip) {
		
		return paySlipDao.getUserbyPaySlip(paySlip);
	}

}
