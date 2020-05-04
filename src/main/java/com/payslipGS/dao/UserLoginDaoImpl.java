package com.payslipGS.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.payslipGS.model.Admin;
import com.payslipGS.model.User;

@Repository
public class UserLoginDaoImpl implements UserLoginDao{
	
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
	public boolean findUser(String username, String password) {
		boolean isValidUser = true;
		String sqlQuery = "from User u where u.username=? and u.password=?";
		List<User> userList = (List<User>) hibernateTemplate.find(sqlQuery, username, password);
		// List<Admin> adminList=new ArrayList<Admin>();
		// Admin admin=new Admin();
		// admin.setUsername("abc");
		// admin.setPassword("123");
		// adminList.add(admin);
		if (userList!=null && userList.size()>0) {
			isValidUser = true;
		}else {
			isValidUser=false;
		}
		return isValidUser;


	}

}
