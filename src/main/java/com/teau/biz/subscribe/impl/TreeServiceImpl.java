package com.teau.biz.subscribe.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;

@Service("treeService")
public class TreeServiceImpl implements SubService{
	@Autowired
	private TreeDAOMybatis TreeDAO;
	
	public TreeServiceImpl() {
		
	}
	
	public void insertSub(SubVO vo) {
		TreeDAO.insertSub(vo);
	}
	
	public void updateSub(SubVO vo) {
		TreeDAO.updateSub(vo);
	}
	
	public void deleteSub(SubVO vo) {
		TreeDAO.deleteSub(vo);
	}
	
	public SubVO getSub(SubVO vo) {
		return TreeDAO.getSub(vo);
	}
	
	
}
