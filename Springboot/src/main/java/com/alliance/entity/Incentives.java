package com.alliance.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Incentives {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int employeeId;
	private String incentiveName;
	private double amount;
	private int periodical;
	private boolean isActive;
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
	public String getIncentiveName() {
		return incentiveName;
	}
	public void setIncentiveName(String incentiveName) {
		this.incentiveName = incentiveName;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	public int getPeriodical() {
		return periodical;
	}
	public void setPeriodical(int periodical) {
		this.periodical = periodical;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
}
