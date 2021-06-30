package com.teau.biz.shop;

import java.util.List;

public interface ShopService {
	
	void insertShop(ShopVO vo);
	
	void updateShop(ShopVO vo);
	
	void deleteShop(ShopVO vo);
	
	ShopVO getShop(ShopVO vo);
	
	List<ShopVO> getShopList();
	
}
