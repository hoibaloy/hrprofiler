package com.alliance.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Certificates {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private int employeeId;
	private String certificateName;
	private String tookFrom;
	private Date dateAcquired;
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
	public String getCertificateName() {
		return certificateName;
	}
	public void setCertificateName(String certificateName) {
		this.certificateName = certificateName;
	}
	public String getTookFrom() {
		return tookFrom;
	}
	public void setTookFrom(String tookFrom) {
		this.tookFrom = tookFrom;
	}
	public Date getDateAcquired() {
		return dateAcquired;
	}
	public void setDateAcquired(Date dateAcquired) {
		this.dateAcquired = dateAcquired;
	}
}
