package com.teau.biz.shop.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.shop.ShopVO;

@Repository
public class ShopDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertShop(ShopVO vo) {
		mybatis.insert("ShopDAO.insertShop", vo);
	}
	
	public void updateShop(ShopVO vo) {
		mybatis.update("ShopDAO.updateShop", vo);
	}
	
	public void deleteShop(ShopVO vo) {
		mybatis.delete("ShopDAO.deleteShop", vo);
	}
	
	public ShopVO getShop(ShopVO vo) {
		return (ShopVO) mybatis.selectOne("SubDAO.getShop", vo);
	}
	
	public List<ShopVO> getShopList(){
		return mybatis.selectList("SubDAO.getShopList");
	}
	
	
}
