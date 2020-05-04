package com.payslipGS.model;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "payslip")
public class PaySlip {

	public PaySlip() {

	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer payslipId;
	private Date issueDate;
	private Float basicPay;
	private Float overTime;
	private Float bonus;
	private Float grossPay;
	public Float getGrossPay() {
		return grossPay;
	}

	public void setGrossPay(Float grossPay) {
		this.grossPay = grossPay;
	}

	private Float tax;
	private Float cpf;
	private Float netPay;

	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name = "userId")
	private User user;

	public Integer getPayslipId() {
		return payslipId;
	}

	public void setPayslipId(Integer payslipId) {
		this.payslipId = payslipId;
	}

	public Date getIssueDate() {
		return issueDate;
	}

	public void setIssueDate(Date issueDate) {
		this.issueDate = issueDate;
	}

	public Float getBasicPay() {
		return basicPay;
	}

	public void setBasicPay(Float basicPay) {
		this.basicPay = basicPay;
	}

	public Float getOverTime() {
		return overTime;
	}

	public void setOverTime(Float overTime) {
		this.overTime = overTime;
	}

	public Float getBonus() {
		return bonus;
	}

	public void setBonus(Float bonus) {
		this.bonus = bonus;
	}

	

	public Float getTax() {
		return tax;
	}

	public void setTax(Float tax) {
		this.tax = tax;
	}

	public Float getCpf() {
		return cpf;
	}

	public void setCpf(Float cpf) {
		this.cpf = cpf;
	}

	public Float getNetPay() {
		return netPay;
	}

	public void setNetPay(Float netPay) {
		this.netPay = netPay;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
