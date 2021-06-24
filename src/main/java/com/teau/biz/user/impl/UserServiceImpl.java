package com.teau.biz.user.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.user.UserService;
import com.teau.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl  implements UserService{
	@Autowired
	private UserDAOMybatis userDAO;
	
	
	public UserServiceImpl() {
		
	}
	
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);
	}

	public void updateUser(UserVO vo) {
		userDAO.updateUser(vo);
	}

	public void deleteUser(UserVO vo) {
		userDAO.deleteUser(vo);
	}

	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

}
