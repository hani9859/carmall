package com.carmall2015.carmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String index(){
		return "/main/index";
	}
	@RequestMapping("/company")
	public String company(){
		return "/main/company";
	}
	@RequestMapping("/useinfo")
	public String useinfo(){
		return "/main/useinfo";
	}
	@RequestMapping("/policy")
	public String policy(){
		return "/main/policy";
	}
	
}
