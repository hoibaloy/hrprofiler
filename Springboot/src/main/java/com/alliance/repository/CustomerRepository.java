package com.alliance.repository;

import com.alliance.entity.Customer;
import com.alliance.repository.custom.CustomerRepositoryCustom;
import com.alliance.repository.custom.GenericRepositoryCustom;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Repository;

@Repository("customerRepository")
public interface CustomerRepository extends JpaRepository<Customer, Integer>, CustomerRepositoryCustom, GenericRepositoryCustom {
	public Customer findOneById(Integer customerId);
	public Customer findOneByName(String name);
	
	@Transactional
	@Modifying
	public int deleteById(Integer customerId);
}
