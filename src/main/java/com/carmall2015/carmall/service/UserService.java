package com.carmall2015.carmall.service;


import java.util.ArrayList;
import java.util.List;

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
	public void modify(UserVo vo){
		userDao.update(vo);
	}
	
	public List<UserVo> getMember(int page){
		List<UserVo> list = userDao.getMember();
		int total = list.size();
		int p = (page-1)*20; // start
		int end = p+20; 	//end
		List<UserVo> list1 = new ArrayList<UserVo>();
		for(int i = p; i<end; i++){
			if(i==total){
				break;
			}else{
				list1.add(list.get(i));
			}
		}
		return list1;
	}
	
	public List<UserVo> getMembers(){
		List<UserVo> list = userDao.getMember();
		return list;
	}
	public List<UserVo> idSearch(int page, String id){
		List<UserVo> list = userDao.idSearch(id);
		int total = list.size();
		int p = (page-1)*20; // start
		int end = p+20; 	//end
		List<UserVo> list1 = new ArrayList<UserVo>();
		for(int i = p; i<end; i++){
			if(i==total){
				break;
			}else{
				list1.add(list.get(i));
			}
		}
		return list1;
	}
	public List<UserVo> idMembers(String id){
		List<UserVo> list = userDao.idSearch(id);
		return list;
	}
	public List<UserVo> nameMembers(String name){
		List<UserVo> list = userDao.nameSearch(name);
		return list;
	}
	public List<UserVo> nameSearch(int page, String name){
		List<UserVo> list = userDao.nameSearch(name);
		int total = list.size();
		int p = (page-1)*20; // start
		int end = p+20; 	//end
		List<UserVo> list1 = new ArrayList<UserVo>();
		for(int i = p; i<end; i++){
			if(i==total){
				break;
			}else{
				list1.add(list.get(i));
			}
		}
		return list1;
	}
}
