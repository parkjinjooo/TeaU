package com.teau.biz.subscribe.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.subscribe.SubVO;

@Repository
public class TreeDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// CRUD 기능
	// insert
	public void insertSub(SubVO vo) {
		mybatis.insert("SubDAO.insertSub_tree", vo);
	}
	
	public void updateSub(SubVO vo) {
		mybatis.update("SubDAO.updateSub_tree", vo);
	}
	
	public void deleteSub(SubVO vo) {
		mybatis.delete("SubDAO.deleteSub_tree", vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return (SubVO) mybatis.selectOne("SubDAO.getSub_tree", vo);
	}

}
