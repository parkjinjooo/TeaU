package com.teau.biz.user;

import java.util.Date;
import lombok.Data;


public class UserVO {
	private String memberId; 
	private String memberPass;
	private String memberPasscheck;
	private String memberName;
	private String memberPhone;
	private String memberZipcode;
	private String memberAddress;
	private int memberPoint;
	private Date memberJoindate;
	private String memberSub;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPass() {
		return memberPass;
	}
	public void setMemberPass(String memberPass) {
		this.memberPass = memberPass;
	}
	public String getMemberPasscheck() {
		return memberPasscheck;
	}
	public void setMemberPasscheck(String memberPasscheck) {
		this.memberPasscheck = memberPasscheck;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberPhone() {
		return memberPhone;
	}
	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}
	public String getMemberZipcode() {
		return memberZipcode;
	}
	public void setMemberZipcode(String memberZipcode) {
		this.memberZipcode = memberZipcode;
	}
	public String getMemberAddress() {
		return memberAddress;
	}
	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	public Date getMemberJoindate() {
		return memberJoindate;
	}
	public void setMemberJoindate(Date memberJoindate) {
		this.memberJoindate = memberJoindate;
	}
	public String getMemberSub() {
		return memberSub;
	}
	public void setMemberSub(String memberSub) {
		this.memberSub = memberSub;
	}
	@Override
	public String toString() {
		return "UserVO [memberId=" + memberId + ", memberPass=" + memberPass + ", memberPasscheck=" + memberPasscheck
				+ ", memberName=" + memberName + ", memberPhone=" + memberPhone + ", memberZipcode=" + memberZipcode
				+ ", memberAddress=" + memberAddress + ", memberPoint=" + memberPoint + ", memberJoindate="
				+ memberJoindate + ", memberSub=" + memberSub + "]";
	}
	
}
