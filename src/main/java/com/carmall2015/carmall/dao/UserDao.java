package com.carmall2015.carmall.dao;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.ibatis.SqlMapClientTemplate;
import org.springframework.stereotype.Repository;

import com.carmall2015.carmall.vo.UserVo;

@Repository
public class UserDao {
	@Autowired
	SqlMapClientTemplate sqlMapClientTemplate;
	public void insert( UserVo vo){
		System.out.println(vo);
		sqlMapClientTemplate.insert("user.insert", vo);
	}
	public UserVo getLogin(String id, String password){
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		UserVo vo = (UserVo)sqlMapClientTemplate.queryForObject("user.getLogin", map);
		return vo;
		
	}
	public void update(UserVo vo){
		sqlMapClientTemplate.update("user.update", vo);
	}
	
	public List<UserVo> getMember(){
		List<UserVo> list =	sqlMapClientTemplate.queryForList("user.getMember");
		return list;
	}
	
	public List<UserVo> idSearch(String id){
		List<UserVo> list = sqlMapClientTemplate.queryForList("user.idsearch", id);
		return list;
	}
	public List<UserVo> nameSearch(String name){
		List<UserVo> list = sqlMapClientTemplate.queryForList("user.namesearch", name);
		return list;
	}
	
}
