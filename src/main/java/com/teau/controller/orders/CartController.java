package com.teau.controller.orders;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.orders.CartService;
import com.teau.biz.orders.CartVO;
import com.teau.biz.shop.ShopService;
import com.teau.biz.shop.ShopVO;

@Controller
public class CartController {
		
	@Autowired
	private CartService cartService;

	@Autowired
	private ShopService shopService;
	
	// TeaId 데리고 카트로 이동 
	@RequestMapping(value = "/cart.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String cart(@ModelAttribute CartVO vo) {
		
		cartService.insertCart(vo);
		
		/*
		 * ShopVO shop = new ShopVO(); shop.setTeaId(teaId);
		 * 
		 * model.addAttribute("cartItem", shopService.getShop(shop));
		 */
		return "장바구니에 담겼습니다.";
	}
	
	public String insertCart(CartVO vo)  {
		 cartService.insertCart(vo);
	     return "redirect:getCartList.do";
	}
	
	public String updateCart(CartVO vo) {

        cartService.updateCart(vo);
        return "redirect:getCartList.do";
	}
	
	public String deleteCart(CartVO vo) {
		  cartService.deleteCart(vo);
	      return "redirect:getCartList.do";
	}
	
	public String getCartList(CartVO vo, Model model) {
		
		model.addAttribute("cartList", cartService.getCartList(vo));
        return "cart.jsp";
	}
	
	
}
