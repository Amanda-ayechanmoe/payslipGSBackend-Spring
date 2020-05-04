package com.payslipGS.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.payslipGS.model.Admin;
import com.payslipGS.model.PaySlip;
import com.payslipGS.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	
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
	public Integer create(User user) {
		Integer result=(Integer)hibernateTemplate.save(user);
		return result;
	}

	@Transactional
	@Override
	public List<User> list() {
		List<User> userList=(List<User>)hibernateTemplate.loadAll(User.class);
		return userList;
	}

	@Transactional
	@Override
	public void delete(int userId) {
		hibernateTemplate.delete(hibernateTemplate.get(User.class, userId));
		
	}

	@Transactional
	@Override
	public User get(int userId) {
		User user=hibernateTemplate.get(User.class, userId);
		return user;
	}

	@Transactional
	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		hibernateTemplate.saveOrUpdate(user);
	}

	@Transactional
	@Override
	public List<PaySlip> getPayslipbyUserid(int userId) {
		List<PaySlip> payslipList=(List<PaySlip>)hibernateTemplate.loadAll(PaySlip.class);
		List<PaySlip> pList = new ArrayList<PaySlip>();
		for (int i=0;i<payslipList.size();i++) {
			PaySlip payslip=payslipList.get(i);
			User user=payslip.getUser();
			int idUser=user.getUserId();
			if(idUser==userId) {
				pList.add(payslip);
			}
			
		}
		return pList;
	}
	
	@Transactional
	@Override
	public void deletePayslipbyUserId(List<PaySlip> paySlip) {
		for (int i=0;i<paySlip.size();i++) {
			PaySlip payslip=paySlip.get(i);
			hibernateTemplate.delete(hibernateTemplate.get(PaySlip.class, payslip.getPayslipId()));
		}
		
	}

	@SuppressWarnings("unchecked")
	@Transactional
	@Override
	public Integer getUserbyLogin(String username, String password) {
		int userId=0;
		//boolean isValidUser=false;
		//boolean id=false;
		String sqlQuery = "from User u where u.username=? and u.password=?";
		List<User> userList = (List<User>) hibernateTemplate.find(sqlQuery, username, password);
		/*if (userList!=null && userList.size()>0) {
			isValidUser = true;
		}else {
			isValidUser=false;
		}
		return isValidUser;
*/

	
		for(int i=0;i<userList.size();i++) {
			User user=userList.get(i);
			userId=user.getUserId();
		}
		return userId;
	}
	
	

}
