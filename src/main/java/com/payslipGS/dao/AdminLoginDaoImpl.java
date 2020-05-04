package com.payslipGS.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.payslipGS.model.Admin;

@Repository
public class AdminLoginDaoImpl implements AdminLoginDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public boolean findAdmin(String username, String password) {
		boolean isValidUser = true;
		String sqlQuery = "from Admin a where a.username=? and a.password=?";
		List<Admin> adminList = (List<Admin>) hibernateTemplate.find(sqlQuery, username, password);
		// List<Admin> adminList=new ArrayList<Admin>();
		// Admin admin=new Admin();
		// admin.setUsername("abc");
		// admin.setPassword("123");
		// adminList.add(admin);
		if (adminList!=null && adminList.size()>0) {
			isValidUser = true;
		}else {
			isValidUser=false;
		}
		return isValidUser;

}

}
