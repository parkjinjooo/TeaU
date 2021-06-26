package com.teau.controller.member;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.member.MemberVO;
import com.teau.biz.member.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("/insertUser.do")
	public String insertUser(MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:contact.do";
	}
	
	@RequestMapping("/updateUser.do")
	public String updateSub(MemberVO vo) {
		memberService.updateMember(vo);
		return "redirect:getUser.do";
	}
	
	@RequestMapping("/deleteUser.do")
	public String deleteUser(MemberVO vo) {
		memberService.deleteMember(vo);
		return "redirect:getUser.do";
	}
	
	@RequestMapping("/getUser.do") // userid
	public String getUser(@RequestParam("memberId") String id, Model model) {
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		
		model.addAttribute("member",memberService.getMember(vo));
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/loginV.do") //@RequestParam('')는 받아올 name값 
	public String loginV(@RequestParam("memberId")String id, @RequestParam("memberPass")String password, HttpSession session) {
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		
		if(vo.getMemberId() == null || vo.getMemberId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}

		MemberVO member = memberService.getMember(vo);
		System.out.println(member);
		
		if(id.equals(member.getMemberId()) && password.equals(member.getMemberPass())) {
			session.setAttribute("member", member);
			System.out.println(member.getMemberId());
			
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
