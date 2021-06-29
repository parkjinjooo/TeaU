package com.teau.biz.admin.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.admin.AdminVO;

@Repository
public class AdminDAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	
	public AdminVO getAdmin(AdminVO vo) {
		System.out.println("mybatis로 loginMember() 기능처리");
		return (AdminVO) mybatis.selectOne("AdminDAO.getMember", vo);
	}
	
	
	
/*
	  public List<BoardVO> getBoardList(BoardVO vo) {
	  System.out.println("mybatis로 geteboardlist() 기능처리"); 
      return mybatis.selectList("BoardDAO.getBoardList", vo);
	*/
//	if(vo.getSearchCondition().equals("TITLE")) {
//		return mybatis.selectList("BoardDAO.getBoardList_T", vo);
//	}else if(vo.getSearchCondition().equals("CONTENT")) {
		
	
	//	return null;
//	}
}
