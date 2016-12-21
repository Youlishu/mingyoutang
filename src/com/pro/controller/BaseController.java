package com.pro.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

	@RequestMapping("/toMingyoutangHomepage")
	public String toMingyoutangHomepage(){
		return "users/MingyoutangHomepage";
	}
	@RequestMapping("/toProfessiona")
	public String toProfessiona(){
		return "users/Professiona";
	}
	
	@RequestMapping("/toInstructor")
	public String toInstructor(){
		return "users/Instructor";
	}
	
	@RequestMapping("/toTraining")
	public String toTraining(){
		
		return "users/training";
	}
	
	@RequestMapping("/tologin")
	public String tologin(){
		
		return "users/login";
	}
	
	@RequestMapping("/toReg")
	public String toReg(){
		
		return "users/reg";
	}
	@RequestMapping("/toceshi")
	public String toceshi(){
		
		return "users/Admin/AdminTotal";
	}
	
	
	
}
