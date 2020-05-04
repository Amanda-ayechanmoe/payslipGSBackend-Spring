package com.payslipGS.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

@Repository
public class PaySlipDaoImpl implements PayslipDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	@Override
	public void create(PaySlip paySlip) {
		hibernateTemplate.saveOrUpdate(paySlip);
		
	}

	@Transactional
	@Override
	public PaySlip getPayslipById(int id) {
		PaySlip paySlip=hibernateTemplate.get(PaySlip.class, id);
		return paySlip;
	}

	@Transactional
	@Override
	public User getUserbyPaySlip(PaySlip paySlip) {
		User user=paySlip.getUser();
		return user;
	}

}
