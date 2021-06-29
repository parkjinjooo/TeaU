package com.teau.biz.admin.impl;

import org.springframework.stereotype.Service;

import com.teau.biz.admin.AdminService;
import com.teau.biz.admin.AdminVO;

import org.springframework.beans.factory.annotation.Autowired;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminDAO adminDAO;
	
	public AdminVO loginAdmin(AdminVO vo) {
		return adminDAO.getAdmin(vo);
	}
}

