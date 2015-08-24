package com.carmall2015.carmall.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.carmall2015.carmall.service.ProductService;
import com.carmall2015.carmall.service.UserService;
import com.carmall2015.carmall.vo.ProductVo;
import com.carmall2015.carmall.vo.UserVo;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	
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
	public String product(Model model, @RequestParam(required=false, defaultValue="1") int page){
		List<ProductVo> list = productService.getListpage(page);
		List<ProductVo> list1 = productService.getList();
		int total = list1.size();
		int pageBlock = (int)Math.ceil(total/20.);
		int num =total-(page-1)*20;
		
		model.addAttribute("total", total);
		model.addAttribute("pageBlock", pageBlock);
		model.addAttribute("num", num);
		model.addAttribute("list", list);
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
	@RequestMapping("/product_new")
	public String product_new(){
		return "/admin/product_new";
	}
	@RequestMapping("/product_add")
	public String product_add(@RequestParam String menu,
							  @RequestParam String menu1,
							  @RequestParam String code,
							  @RequestParam String name,
							  @RequestParam long car_price,
							  @RequestParam String car_color,
							  @RequestParam String make_year,
							  @RequestParam String oil,
							  @RequestParam String gearBox,
							  @RequestParam String maileage,
							  @RequestParam String cc,
							  @RequestParam String accident,
							  @RequestParam String car_number,
							  @RequestParam String content,
							  @RequestParam String status
							  ){
		ProductVo vo = new ProductVo();
		vo.setCountry_name(menu);
		vo.setBrand_name(menu1);
		vo.setProduct_code(code);
		vo.setName(name);
		vo.setCar_price(car_price);
		vo.setColor(car_color);
		vo.setMake_year(make_year);
		vo.setOil(oil);
		vo.setGearBox(gearBox);
		vo.setMaileage(maileage);
		vo.setCc(cc);
		vo.setAccident(accident);
		vo.setCar_number(car_number);
		vo.setContent(content);
		vo.setCarStatus(status);
		
		productService.insert(vo);
		
		
		return "redirect:/admin/product";
	}
		@RequestMapping("/product_search")
		public String product_search(Model model,@RequestParam(required=false, defaultValue="1") int page,
									 @RequestParam(required=false) String carStatus,
									 @RequestParam(required=false) String country_name,
									 @RequestParam(required=false)  String brand_name,
									 @RequestParam(required=false)  String sel,
									 @RequestParam(required=false)  String text1){
			String name= "";
			String product_code = "";
			if(sel.equals("name")){
				name=text1;
			}else if (sel.equals("product_code")){
				product_code=text1;
			}
			
			List<ProductVo>list = productService.productSearch(page, carStatus, country_name, brand_name, name, product_code);
			List<ProductVo>list1 = productService.productSearchPage(carStatus, country_name, brand_name, name, product_code);
			
			int total = list1.size();
			int pageBlock = (int)Math.ceil(total/20.);
			int num =total-(page-1)*20;
			
			model.addAttribute("total", total);
			model.addAttribute("pageBlock", pageBlock);
			model.addAttribute("num", num);
			model.addAttribute("list", list);
			
			
			return "/admin/product";
	}
		@RequestMapping("/product_edit")
		public String product_edit(@RequestParam long car_no, Model model){
			ProductVo vo =productService.getProduct(car_no);
			String addDate = vo.getAdd_date();
			String addDate1 = addDate.substring(0, 4);
			String addDate2 = addDate.substring(5,7);
			String addDate3 = addDate.substring(8,11);
			
			model.addAttribute("addDate1", addDate1);
			model.addAttribute("addDate2", addDate2);
			model.addAttribute("addDate3", addDate3);
			model.addAttribute("vo", vo);
			
			
			
			return "/admin/product_edit";
		}
		@RequestMapping("/product_modify")
		public String product_modify(){
			
			
			return "redirect:/admin/product";
		}


}
