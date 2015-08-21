package com.carmall2015.carmall.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.carmall2015.carmall.service.UserService;
import com.carmall2015.carmall.vo.UserVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/")
	public String admin(HttpSession session){
		UserVo vo =(UserVo)session.getAttribute("authUser");
		String userGrade= vo.getUserGrade();
		if(userGrade.equals("admin")){
			return "/admin/login";
		}else{
			return "/";
		}
	}
	@RequestMapping("/member")
	public String member(Model model, @RequestParam(required=false, defaultValue="1") int page){
		
		List<UserVo> list = userService.getMembers();
		List<UserVo> list1 = userService.getMember(page);
		int total = list.size();
		int pageBlock = (int)Math.ceil(total/20.);
		int num =total-(page-1)*20;
		
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("total", total);
		model.addAttribute("list", list1);
		model.addAttribute("num", num);
		
		return "/admin/member";
	}
	@RequestMapping("/product")
	public String product(){
		return "/admin/product";
	}
	@RequestMapping("/jumun")
	public String jumun(){
		return "/admin/jumun";
	}
	@RequestMapping("/opt")
	public String option(){
		return "/admin/opt";
	}
	@RequestMapping("/faq")
	public String faq(){
		return "/admin/faq";
	}
	
	@RequestMapping("/login")
	public String login( @RequestParam String adminid, @RequestParam String adminpw){
		UserVo vo = userService.login(adminid, adminpw);
		String userGrade = vo.getUserGrade();
		if("admin".equals(userGrade)){
			return "redirect:/admin/member";
		}else{
			return "/admin/login";
		}
		
	}
	@RequestMapping("/search")
	public String login(Model model, @RequestParam int sel1 , @RequestParam String text1, @RequestParam(required=false, defaultValue="1") int page){
		List<UserVo> list = new ArrayList<UserVo>();
		List<UserVo> list1 = new ArrayList<UserVo>();

		if(sel1==2){
			list = userService.idSearch(page, text1);
			list1 = userService.idMembers(text1);
		}else if(sel1==1){
			list = userService.nameSearch(page, text1);
			list1 = userService.nameMembers(text1);
		}
		
		int total = list1.size();
		int pageBlock = (int)Math.ceil(total/20.);
		int num =total-(page-1)*20;
		
		model.addAttribute("total", total);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("list", list);
		model.addAttribute("num", num);
		return "/admin/member";
	}

}
