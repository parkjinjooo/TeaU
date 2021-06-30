package com.teau.controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class ShopController {

	@Autowired
	private ShopService shopservice;
	
	@RequestMapping(value="/shopSeason.do")
	public String getShopSeasonList(Model model) {
		model.addAttribute("shopSeason", shopservice.getShopList());				
		
		return "shopSeason";
	}
	
	@RequestMapping(value="/shopUser.do")
	public String getShopUserList(Model model) {
		model.addAttribute("shopUser", shopservice.getShopList());				
		
		return "shopUser";
	}
	
	@RequestMapping(value="/shopBlend.do")
	public String getShopBlendList(Model model) {
		model.addAttribute("shopBlend", shopservice.getShopList());				
		
		return "shopBlend";
	}
	
	@RequestMapping(value="/getShop.do")
	public String getShop(@ModelAttribute ShopVO vo) {
		return "shop_details";
	}
	
	@RequestMapping(value="/insertShop.do")
	public String insertShop(@ModelAttribute ShopVO vo) {
		return "";
	}

	@RequestMapping(value="/updateShop.do")
	public String updateShop(@ModelAttribute ShopVO vo) {
		return "";
	}
	
	@RequestMapping(value="/deleteShop.do")
	public String deleteShop(@ModelAttribute ShopVO vo) {
		return "";
	}
	
	
	
	
	
}
