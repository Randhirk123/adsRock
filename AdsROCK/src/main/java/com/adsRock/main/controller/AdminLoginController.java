package com.adsRock.main.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.adsRock.main.dto.AdminDTO;
import com.adsRock.main.model.Admin;
import com.adsRock.main.service.AdminService;

@Controller
public class AdminLoginController {

	@Autowired
	private AdminService adminService;
	
	@GetMapping("/admin")
	public String adminLogin(Map<String, Object> model) {
		model.put("admin", new Admin());
		return "adminLogin";	
	}
	
	@GetMapping("/reset")
	public String forgotPassword(Map<String, Object> model) {
		model.put("admin", new Admin());
		return "password_Reset";	
	}
	
	
	  @PostMapping("/dashboard")
	  public String viewdashBoard(@ModelAttribute("admin")Admin adDto)
	  {
		  ModelMap map=new ModelMap();
		  boolean status=adminService.matchAdminLoginDetails(adDto);
		  if(status)
		  {
			  System.out.println(status);
			  System.out.println(adDto.getUserName());
			  System.out.println(adDto.getPassword());
		  //adminService.createOrUpdateAdmin(adDto);
			  return "dashboard"; 
		  }
		  else
		  {
			  map.addAttribute("message", "No Record Found with The Given input");
			  return "adminLogin";
		  }
	  }
	 
}
