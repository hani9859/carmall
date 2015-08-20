package com.carmall2015.carmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaqController {
	
	@RequestMapping("/faq")
	public String index(){
		return "/faq/faq";
	}
}
