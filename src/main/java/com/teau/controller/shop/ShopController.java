package com.teau.controller.shop;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class ShopController {

	@Autowired
	private ShopService shopservice;
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	// 각각 페이지로 전체리스트 가지고 이동 
	@RequestMapping(value="/shopSeason.do")
	public String getShopSeasonList(Model model) {
		model.addAttribute("shopSeason", shopservice.getShopList());				
		
		return "shop/shopSeason";
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
	
	// 상품 추가 
	@RequestMapping(value="/shopCreate.do")
	public String shopCreate() {
		
		return "shop/shopCreate";
	}
	
	// 상품 상세 
	@RequestMapping(value="/shop_details.do")
	public String getShop(@RequestParam("teaId") int id, Model model) {
		ShopVO shop = new ShopVO();
		shop.setTeaId(id);
		
		
		model.addAttribute("teaDetail", shopservice.getShop(shop));
		
		System.out.println(shopservice.getShop(shop));
		
		return "shop/shop_details";
	}
	
	
	// CRUD
	@RequestMapping(value="/insertShop.do")
	public String insertShop(ShopVO vo) throws IOException {
		
		MultipartFile uploadFile = vo.getUploadFile();
		System.out.println("uploadFile:" + uploadFile);
		String imgUploadPath = uploadPath + File.separator;
		
		
		vo.setTeaImg(uploadFile.getOriginalFilename());
		System.out.println(uploadFile.getOriginalFilename());
		uploadFile.transferTo(new File(imgUploadPath + uploadFile.getOriginalFilename()));		
//		
//		if(!uploadFile.isEmpty()) {
//			String fileName = uploadFile.getOriginalFilename();
//			uploadFile.transferTo(new File("D;/" + fileName));
//			System.out.println(fileName);
//		}
		
		System.out.println("등록");
		shopservice.insertShop(vo);
		return "redirect:shopSeason.do";
	}

	@RequestMapping(value="/updateShop.do")
	public String updateShop(@ModelAttribute ShopVO vo) {
		return "";
	}
	
	@RequestMapping(value="/deleteShop.do")
	public String deleteShop(@ModelAttribute ShopVO vo) {
		return " ";
	}
	
	
	
	
	
}
