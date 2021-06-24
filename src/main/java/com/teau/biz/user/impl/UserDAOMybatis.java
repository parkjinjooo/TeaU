package com.teau.biz.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.teau.biz.user.UserVO;

@Repository
public class UserDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
	}
	
	public void updateUser(UserVO vo) {
		mybatis.update("UserDAO.updateUser", vo);
	}
	
	public void deleteUser(UserVO vo) {
		mybatis.delete("UserDAO.deleteUser", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		return (UserVO) mybatis.selectOne("UserDAO.getUser", vo);
	}	
	
	
	
	
}
