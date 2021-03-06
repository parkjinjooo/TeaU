package com.teau.biz.member.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.member.MemberVO;

@Repository
public class MemberDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertMember(MemberVO vo) {
		mybatis.insert("MemberDAO.insertMember", vo);
	}
	
	public void updateMember(MemberVO vo) {
		mybatis.update("MemberDAO.updateMember", vo);
	}
	
	public void deleteMember(MemberVO vo) {
		mybatis.delete("MemberDAO.deleteMember", vo);
	}
	
	public MemberVO getMember(MemberVO vo) {
		return (MemberVO) mybatis.selectOne("MemberDAO.getMember", vo);
	}	
	
	//
	
	public int memberPasscheck(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.memberPasscheck", vo);
		return result;	
	}
	
	public int memberIdcheck(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.memberIdcheck", vo);
		return result;	
	}
	
	public void memberSub(MemberVO vo) {
		mybatis.update("MemberDAO.memberSub", vo);
	}
	
}
