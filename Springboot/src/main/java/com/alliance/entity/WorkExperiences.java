package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class WorkExperiences {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int employeeId;
	@Column(nullable = true)
	private String companyName;
	@Column(nullable = true)
	private String companyAddress;
	@Column(nullable = true)
	private Date dateResigned;
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
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public Date getDateResigned() {
		return dateResigned;
	}
	public void setDateResigned(Date dateResigned) {
		this.dateResigned = dateResigned;
	}
}
