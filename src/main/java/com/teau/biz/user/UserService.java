package com.teau.biz.user;

public interface UserService {
	
	void insertUser(UserVO vo);
	
	void updateUser(UserVO vo);
	
	void deleteUser(UserVO vo);
	
	UserVO getUser(UserVO vo);
}
