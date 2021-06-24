package com.teau.controller.subscribe;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.user.UserVO;

@Controller
public class SubController {
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;

	@RequestMapping("/subscribe_main.do")
	public String main() {
		return "WEB-INF/JSP/subscribe_main.jsp";
	}
	
	@RequestMapping("/subscribe_leaf.do")
	public String leaf(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		
		model.addAttribute("user", user);
		return "WEB-INF/JSP/subscribe_leaf.jsp";
	}
	
	@RequestMapping("/mypage.do")
	public String my(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		
		SubVO vo = new SubVO();
		vo.setSubUser(user.getMemberId());
		
		SubVO leaf = leafService.getSub(vo);
			
		model.addAttribute("sub", leaf);
		return "WEB-INF/JSP/mypage.jsp"; 
	}
	
}
