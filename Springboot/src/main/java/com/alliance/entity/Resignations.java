package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

@Entity
public class Resignations {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int employeeId;
	private Date resignationTendered;
	private Date resignationApproved;
	private Date effectiveDate;
	@Lob
	private String reasons;
	private Date dateInterview;
	private Date dateCleared;
	private Date dateFinalPay;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public Date getResignationTendered() {
		return resignationTendered;
	}
	public void setResignationTendered(Date resignationTendered) {
		this.resignationTendered = resignationTendered;
	}
	public Date getResignationApproved() {
		return resignationApproved;
	}
	public void setResignationApproved(Date resignationApproved) {
		this.resignationApproved = resignationApproved;
	}
	public Date getEffectiveDate() {
		return effectiveDate;
	}
	public void setEffectiveDate(Date effectiveDate) {
		this.effectiveDate = effectiveDate;
	}
	public String getReasons() {
		return reasons;
	}
	public void setReasons(String reasons) {
		this.reasons = reasons;
	}
	public Date getDateInterview() {
		return dateInterview;
	}
	public void setDateInterview(Date dateInterview) {
		this.dateInterview = dateInterview;
	}
	public Date getDateCleared() {
		return dateCleared;
	}
	public void setDateCleared(Date dateCleared) {
		this.dateCleared = dateCleared;
	}
	public Date getDateFinalPay() {
		return dateFinalPay;
	}
	public void setDateFinalPay(Date dateFinalPay) {
		this.dateFinalPay = dateFinalPay;
	}
}
