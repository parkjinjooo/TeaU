package com.teau.biz.subscribe;


public interface SubService {
	
	void insertSub(SubVO vo);
	
	void updateSub(SubVO vo);
	
	void deleteSub(SubVO vo);
	
	SubVO getSub(SubVO vo);
	
}
