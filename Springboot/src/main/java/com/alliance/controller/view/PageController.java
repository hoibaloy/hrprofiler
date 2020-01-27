package com.alliance.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping("/")
	public String dashboard(ModelMap modelMap) {
		modelMap.put("action", "/");
		return "dashboard";
	}
	@RequestMapping("/dashboard")
	public String dashboardClicked(ModelMap modelMap) {
		modelMap.put("action", "/dashboard");
		return "dashboard";
	}
	
	@RequestMapping("/employeerequestforms")
	public String employeerequestforms(ModelMap modelMap) {
		modelMap.put("action", "/employeerequestforms");
		return "employeerequestforms";
	}
	
	@RequestMapping("/disciplinaryissuetracker")
	public String disciplinaryissuetracker(ModelMap modelMap) {
		modelMap.put("action", "/disciplinaryissuetracker");
		return "disciplinaryissuetracker";
	}
	
	@RequestMapping("/resignations")
	public String employsees(ModelMap modelMap) {
		modelMap.put("action", "/resignations");
		return "resignations";
	}
	
	@RequestMapping("/updateemployee")
	public String employeeinformation(ModelMap modelMap) {
		modelMap.put("action", "/updateemployee");
		return "updateemployee";
	}
	
	@RequestMapping("/addemployee")
	public String addemployee(ModelMap modelMap) {
		modelMap.put("action", "/addemployee");
		return "addemployee";
	}
	
	@RequestMapping("/educationwork")
	public String educationwork(ModelMap modelMap) {
		modelMap.put("action", "/educationwork");
		return "forms/educationwork";
	}
}
