package com.carmall2015.carmall.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/order")
public class OrderController {
	
	@RequestMapping("/jumun")
	public String jumun(){
		return "/order/jumun";
	}
	@RequestMapping("/order")
	public String order(){
		return "/order/order";
	}
	@RequestMapping("/pay")
	public String pay(){
		return "/order/order_pay";
	}
	@RequestMapping("/ok")
	public String ok(){
		return "/order/order_ok";
	}

}
