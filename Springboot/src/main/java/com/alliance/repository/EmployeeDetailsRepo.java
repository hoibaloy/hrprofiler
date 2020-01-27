package com.alliance.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.alliance.entity.EmployeeDetails;

public interface EmployeeDetailsRepo extends JpaRepository<EmployeeDetails, Integer> {

}
