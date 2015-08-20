package com.carmall2015.carmall.dao;


import java.util.HashMap;
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
}
