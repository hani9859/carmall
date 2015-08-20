package com.carmall2015.carmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.carmall2015.carmall.service.UserService;
import com.carmall2015.carmall.vo.UserVo;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/login")
	public String loginform(){
		return "/user/member_login";
	}
	@RequestMapping("/agree")
	public String agree(){
		return "/user/member_agree";
	}
	@RequestMapping("/join")
	public String join(){
		return "/user/member_join";
	}
	@RequestMapping("/joinend")
	public String joined(){
		return "/user/member_joinend";
	}
	@RequestMapping("/joinaction")
	public String joinAction(@RequestParam String uid,
							 @RequestParam String passwd,
							 @RequestParam String passwd1,
							 @RequestParam String name,
							 @RequestParam String birthday1,
							 @RequestParam String birthday2,
							 @RequestParam String birthday3,
							 @RequestParam String sm,
							 @RequestParam String tel1,
							 @RequestParam String tel2,
							 @RequestParam String tel3,
							 @RequestParam String phone1,
							 @RequestParam String phone2,
							 @RequestParam String phone3,
							 @RequestParam String juso,
							 @RequestParam String email){
			String birth = birthday1 + birthday2 + birthday3;
			String phoneNumber1 = tel1+tel2+tel3;
			String phoneNumber2 = phone1+phone2+phone3;
			String userStatus = "active";
			String userGrade = "member";
			
			UserVo vo = new UserVo();
			vo.setId(uid);
			if(passwd.equals(passwd1)){
				vo.setPassword(passwd);
			}
			vo.setName(name);
			vo.setBirth(birth);
			vo.setBirth_sm(sm);
			vo.setPhoneNumber1(phoneNumber1);
			vo.setPhoneNumber2(phoneNumber2);
			vo.setEmail(email);
			vo.setAddress(juso);
			vo.setUserStatus(userStatus);
			vo.setUserGrade(userGrade);
						
			System.out.println(vo);
			userService.join(vo);
			
		
		return "redirect:/user/joinend";
	}
	@RequestMapping("/loginaction")
	public String loginAction(HttpSession session, @RequestParam String uid, String pwd){
		UserVo vo = userService.login(uid, pwd);
		if(vo==null){
			return "redirect:/";
		}
		session.setAttribute("authUser", vo);
		
		return "redirect:/";
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("authUser");
		session.invalidate();
		return "redirect:/";
		
	}
}
