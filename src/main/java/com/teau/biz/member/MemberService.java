package com.teau.biz.member;

public interface MemberService {
	
	void insertMember(MemberVO vo);
	
	void updateMember(MemberVO vo);
	
	void deleteMember(MemberVO vo);
	
	MemberVO getMember(MemberVO vo);
	
	//
	public int memberPasscheck(MemberVO vo);
	
	public int memberIdcheck(MemberVO vo);
	
	void memberSub(MemberVO vo);
}
