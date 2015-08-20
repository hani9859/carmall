package com.carmall2015.carmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carmall2015.carmall.dao.UserDao;
import com.carmall2015.carmall.vo.UserVo;

@Service
public class UserService {
	@Autowired
	UserDao userDao;
	public void join(UserVo vo){
		userDao.insert(vo);
	}
	public UserVo login(String id, String password){
		UserVo vo = userDao.getLogin(id, password);
		return vo;
	}

}
