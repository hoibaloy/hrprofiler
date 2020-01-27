package com.alliance.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BusinessUnits {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String buName;
	private int buHead;
	private int hrHead;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBuName() {
		return buName;
	}
	public void setBuName(String buName) {
		this.buName = buName;
	}
	public int getBuHead() {
		return buHead;
	}
	public void setBuHead(int buHead) {
		this.buHead = buHead;
	}
	public int getHrHead() {
		return hrHead;
	}
	public void setHrHead(int hrHead) {
		this.hrHead = hrHead;
	}
}
