package com.alliance.controller.api;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alliance.entity.Certificates;
import com.alliance.entity.CompanyDetails;
import com.alliance.entity.Educations;
import com.alliance.entity.EmployeeDetails;
import com.alliance.entity.SalaryPackages;
import com.alliance.entity.WorkExperiences;
import com.alliance.model.ListResult;
import com.alliance.service.AxintoService;

@Controller
public class AjaxController {
	@Autowired
	private AxintoService service;
	
	//fix error for empty date fields
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@RequestMapping("/employees/add")
	public @ResponseBody int addEmployee(EmployeeDetails emp, CompanyDetails comp) {
		int empId=service.saveEmployeeDetails(emp).getId();
		service.saveCompanyDetails(comp, empId);
		return empId;
	}
	
	
	@PostMapping(value="/employees/education/add")
	public @ResponseBody String addEmployeeEducation(@RequestBody List<Educations> edList) throws IOException {
		service.saveEducationsList(edList);
		return "success ";
	}
	
	@PostMapping(value="/employees/certificate/add")
	public @ResponseBody String addCertificate(@RequestBody List<Certificates> certList) throws IOException {
		service.saveCertificatesList(certList);
		return "success ";
	}
	
	@PostMapping(value="/employees/work/add")
	public @ResponseBody String addWorkExperience(@RequestBody List<WorkExperiences> workList) throws IOException {
		service.saveWorkExperiencesList(workList);
		return "success ";
	}
	
}
