package com.alliance.entity;

import java.sql.Date;
import java.time.LocalDate;

import javax.persistence.AttributeConverter;
import javax.persistence.Column;
import javax.persistence.Converter;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class EmployeeDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int	id;
	private String requestFormId;
	@Column(nullable = true)
	private Date dateRequest;
	@Column(nullable = true)
	private Date dateOffered;
	@Column(nullable = true)
	private Date dateAccepted;
	@Column(nullable = true)
	private Date dateOnboarded;
	@Column(nullable = true)
	private String firstName;
	@Column(nullable = true)
	private String middleName;
	@Column(nullable = true)
	private String lastName;
	@Column(nullable = true)
	private String email;
	@Column(nullable = true)
	private int gender;
	@Column(nullable = true)
	private Date birthdate;
	@Column(nullable = true)
	private String address;
	@Column(nullable = true)
	private String cellNum;
	@Column(nullable = true)
	private String telNum;
	@Column(nullable = true)
	private String birNum;
	@Column(nullable = true)
	private String tin;
	@Column(nullable = true)
	private String philHealthNum;
	@Column(nullable = true)
	private String hdmfNum;
	@Column(nullable = true)
	private String bankNum;
	
	public Date getDateRequest() {
		return dateRequest;
	}
	public void setDateRequest(Date dateRequest) {
		this.dateRequest = dateRequest;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRequestFormId() {
		return requestFormId;
	}
	public void setRequestFormId(String requestFormId) {
		this.requestFormId = requestFormId;
	}
	public Date getDateOffered() {
		return dateOffered;
	}
	public void setDateOffered(Date dateOffered) {
		this.dateOffered = dateOffered;
	}
	public Date getDateAccepted() {
		return dateAccepted;
	}
	public void setDateAccepted(Date dateAccepted) {
		this.dateAccepted = dateAccepted;
	}
	public Date getDateOnboarded() {
		return dateOnboarded;
	}
	public void setDateOnboarded(Date dateOnboarded) {
		this.dateOnboarded = dateOnboarded;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCellNum() {
		return cellNum;
	}
	public void setCellNum(String cellNum) {
		this.cellNum = cellNum;
	}
	public String getTelNum() {
		return telNum;
	}
	public void setTelNum(String telNum) {
		this.telNum = telNum;
	}
	public String getBirNum() {
		return birNum;
	}
	public void setBirNum(String birNum) {
		this.birNum = birNum;
	}
	public String getTin() {
		return tin;
	}
	public void setTin(String tin) {
		this.tin = tin;
	}
	public String getPhilHealthNum() {
		return philHealthNum;
	}
	public void setPhilHealthNum(String philHealthNum) {
		this.philHealthNum = philHealthNum;
	}
	public String getHdmfNum() {
		return hdmfNum;
	}
	public void setHdmfNum(String hdmfNum) {
		this.hdmfNum = hdmfNum;
	}
	public String getBankNum() {
		return bankNum;
	}
	public void setBankNum(String bankNum) {
		this.bankNum = bankNum;
	}
	
}