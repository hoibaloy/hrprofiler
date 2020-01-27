package com.alliance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alliance.entity.Certificates;
import com.alliance.entity.CompanyDetails;
import com.alliance.entity.Educations;
import com.alliance.entity.EmployeeDetails;
import com.alliance.entity.SalaryPackages;
import com.alliance.entity.WorkExperiences;
import com.alliance.repository.CertificatesRepo;
import com.alliance.repository.CompanyDetailsRepo;
import com.alliance.repository.EducationsRepo;
import com.alliance.repository.EmployeeDetailsRepo;
import com.alliance.repository.SalaryPackagesRepo;
import com.alliance.repository.WorkExperiencesRepo;

@Service
public class AxintoService {
	@Autowired
	private EmployeeDetailsRepo empRepo;
	@Autowired
	private EducationsRepo educationsRepo;
	@Autowired
	private CompanyDetailsRepo companyRepo;
	@Autowired
	private WorkExperiencesRepo workRepo;
	@Autowired
	private CertificatesRepo certRepo;
	
	public EmployeeDetails saveEmployeeDetails(EmployeeDetails emp) {
		return empRepo.save(emp);
	}
	
	public void saveEducationsList(List<Educations> eds) {
		for(int i=0;i<eds.size();i++) {
			educationsRepo.save(eds.get(i));
		}
	}
	
	public void saveWorkExperiencesList(List<WorkExperiences> works) {
		for(int i=0;i<works.size();i++) {
			workRepo.save(works.get(i));
		}
	}
	
	public void saveCertificatesList(List<Certificates> certs) {
		for(int i=0;i<certs.size();i++) {
			certRepo.save(certs.get(i));
		}
	}
	
	public void saveCompanyDetails(CompanyDetails comp, int empId) {
		comp.setEmployeeId(empId);
		companyRepo.save(comp);
	}
	
	public List<EmployeeDetails> getEmployeeDetailsList(){
		return empRepo.findAll();
	}
}
