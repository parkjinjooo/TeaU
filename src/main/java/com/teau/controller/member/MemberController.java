package com.teau.controller.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.member.MemberVO;
import com.teau.biz.member.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	// C
	@RequestMapping("/insertMember.do")
	public String insertMember(MemberVO vo, Model model) {
		int result = memberService.memberIdcheck(vo);
		
		if(result == 0) {
			memberService.insertMember(vo);
			return "login";
		}else {
			model.addAttribute("msg", "중복된 아이디입니다.");
			return "signup";
		}
		
	}
	
	// R
	@RequestMapping("/getMember.do") 
	public String getMember(@RequestParam("memberId") String id, Model model) {
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		
		model.addAttribute("member",memberService.getMember(vo));
		return "redirect:mypage.do";
	}

	
	// U
	@RequestMapping("/updateMember.do")
	public String updateMember(@ModelAttribute("member") MemberVO vo, HttpSession session) {
		session.setAttribute("member", vo);
		
		
		memberService.updateMember(vo);
		return "redirect:mypage.do";
	}
	
	// D
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo) {
		memberService.deleteMember(vo);
		return "redirect:getMember.do";
	}
	
	
	
		
	// 마이페이지 수정 
	@RequestMapping(value="/mypage_edit.do")
	public String mypageEdit(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		
		model.addAttribute("member", member);
		return "mypage_edit";
	}
}
