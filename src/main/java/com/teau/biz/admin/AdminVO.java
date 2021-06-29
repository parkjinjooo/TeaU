package com.teau.biz.admin;

import lombok.Data;

@Data
public class AdminVO {

	    // 관리자 아이디 
	    private String adminId;

	    // 관리자 비밀번호 
	    private String adminPass;

	    // 관리자 이름 
	    private String adminName;

	    // 관리자 이메일 UNIQUE KEY
	    private String adminEmail;

}
