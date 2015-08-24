package com.carmall2015.carmall.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carmall2015.carmall.dao.ProductDao;
import com.carmall2015.carmall.vo.ProductVo;

@Service
public class ProductService {
	
	@Autowired
	ProductDao productDao;

	public void insert(ProductVo vo){
		productDao.insert(vo);
	}
	public List<ProductVo> getListpage(int page){
		List<ProductVo> list = productDao.getList();
		int total = list.size();
		int p = (page-1)*20; // start
		int end = p+20; 	//end
		List<ProductVo> list1 = new ArrayList<ProductVo>();
		for(int i = p; i<end; i++){
			if(i==total){
				break;
			}else{
				list1.add(list.get(i));
			}
		}
		return list1;
	}
	
	public List<ProductVo> getList(){
		List<ProductVo> list = productDao.getList();
		return list;
	}
	public List<ProductVo> productSearch(int page, String carStatus, String country_name, String brand_name, String name, String product_code){
		System.out.println(carStatus);
		List<ProductVo> list = productDao.getSearch(carStatus, country_name, brand_name, name, product_code);
		int total = list.size();
		System.out.println(total);
		int p = (page-1)*20; // start
		int end = p+20; 	//end
		List<ProductVo> list1 = new ArrayList<ProductVo>();
		for(int i = p; i<end; i++){
			if(i==total){
				break;
			}else{
				list1.add(list.get(i));
				}
		}
		return list1;
	}
	public List<ProductVo> productSearchPage(String carStatus, String country_name, String brand_name, String name, String product_code){
		List<ProductVo> list = productDao.getSearch(carStatus, country_name, brand_name, name, product_code);
		return list;
	}
	public ProductVo getProduct(long car_no){
		ProductVo vo = productDao.getProduct(car_no);
		return vo;
	}
}
