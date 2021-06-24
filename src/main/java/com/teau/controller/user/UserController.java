package com.teau.controller.user;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.user.UserService;
import com.teau.biz.user.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/insertUser.do")
	public String insertUser(UserVO vo) {
		userService.insertUser(vo);
		return "redirect:contact.do";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateSub(UserVO vo) {
		userService.updateUser(vo);
		return "redirect:getUser.do";
	}
	
	@RequestMapping("/deleteUser.do")
	public String deleteUser(UserVO vo) {
		userService.deleteUser(vo);
		return "redirect:getUser.do";
	}
	
	@RequestMapping("/getUser.do")
	public String getUser(@RequestParam("userid") String id, Model model) {
		UserVO vo = new UserVO();
		vo.setMemberId(id);
		
		model.addAttribute("user",userService.getUser(vo));
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/loginV.do") //@RequestParam('')는 받아올 name값 
	public String loginV(@RequestParam("memberId")String id, @RequestParam("memberPass")String password, HttpSession session) {
		UserVO vo = new UserVO();
		vo.setMemberId(id);
		
		if(vo.getMemberId() == null || vo.getMemberId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}

		UserVO user = userService.getUser(vo);
		System.out.println(user);
		
		if(id.equals(user.getMemberId()) && password.equals(user.getMemberPass())) {
			session.setAttribute("user", user);
			System.out.println(user.getMemberId());
			
			return "redirect:index.jsp";
		}else {
			return "redirect:contact.do";
		}
	}

	@RequestMapping("/contact.do")
	public String login() {
		return "WEB-INF/JSP/login.jsp";
	}
	
	@RequestMapping("/signUp.do")
	public String signUp() {
		return "WEB-INF/JSP/signup.jsp";
	}
	
	
}
