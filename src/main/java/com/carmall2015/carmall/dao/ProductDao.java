package com.carmall2015.carmall.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.carmall2015.carmall.vo.ProductVo;

@Repository
public class ProductDao {

	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	
	public void insert(ProductVo vo){
		sqlMapClientTemplate.insert("product.insert", vo);
	}
	public List<ProductVo> getList(){
		List<ProductVo> list = sqlMapClientTemplate.queryForList("product.getList");
		return list;
	}
	public List<ProductVo> getSearch(String carStatus, String country_name, String brand_name, String name, String product_code){
		Map<String, String> map = new HashMap<String, String>();
		map.put("carStatus", carStatus);
		map.put("country_name", country_name);
		map.put("brand_name", brand_name);
		map.put("name", name);
		map.put("product_code", product_code);
		
		List<ProductVo> list = sqlMapClientTemplate.queryForList("product.product_search",map);
		return list;
	}
	public ProductVo getProduct(long car_no){
		ProductVo vo = (ProductVo)sqlMapClientTemplate.queryForObject("product.getProduct", car_no);
		return vo;
	}
	public void update(String country_name, String brand_name, String product_code, String name, long car_price, String make_year, String oil,
					   String gearBox, String color, String maileage, String cc, String accident, String car_number, String content, String carStatus,
					   String add_date, long car_no){
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("country_name", country_name);
		map.put("brand_name", brand_name);
		map.put("product_code", product_code);
		map.put("name", name);
		map.put("car_price", car_price);
		map.put("make_year", make_year);
		map.put("oil", oil);
		map.put("gearBox", gearBox);
		map.put("color", color);
		map.put("maileage", maileage);
		map.put("cc", cc);
		map.put("accident", accident);
		map.put("car_number", car_number);
		map.put("content", content);
		map.put("carStatus", carStatus);
		map.put("add_date", add_date);
		map.put("car_no", car_no);
		sqlMapClientTemplate.update("product.modify",map);
	}
}
