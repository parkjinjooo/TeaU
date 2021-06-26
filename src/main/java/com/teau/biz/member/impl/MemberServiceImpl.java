package com.teau.biz.member.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.member.MemberVO;
import com.teau.biz.member.MemberService;

@Service("memberService")
public class MemberServiceImpl  implements MemberService{
	@Autowired
	private MemberDAOMybatis memberDAO;
	
	
	public MemberServiceImpl() {
		
	}

	public void insertMember(MemberVO vo) {
		memberDAO.insertMember(vo);
	}

	public void updateMember(MemberVO vo) {
		memberDAO.updateMember(vo);
	}

	public void deleteMember(MemberVO vo) {
		memberDAO.deleteMember(vo);
	}

	public MemberVO getMember(MemberVO vo) {
		return memberDAO.getMember(vo);
	}

}
