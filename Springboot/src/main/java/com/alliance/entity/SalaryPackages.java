package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.annotation.CreatedDate;

@Entity
public class SalaryPackages {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int employeeId;
	private double hourlyRate;
	private double overtimeRate;
	private double holidayRate;
	@CreatedDate
	private Date dateCreated;
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
	public double getHourlyRate() {
		return hourlyRate;
	}
	public void setHourlyRate(double hourlyRate) {
		this.hourlyRate = hourlyRate;
	}
	public double getOvertimeRate() {
		return overtimeRate;
	}
	public void setOvertimeRate(double overtimeRate) {
		this.overtimeRate = overtimeRate;
	}
	public double getHolidayRate() {
		return holidayRate;
	}
	public void setHolidayRate(double holidayRate) {
		this.holidayRate = holidayRate;
	}
	public Date getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}
}
