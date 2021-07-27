package com.teau.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private MemberService memberService;

	// 로그인 값 검증 
	@RequestMapping("/loginV.do") //@RequestParam('')는 받아올 name값 
	public String loginV(@RequestParam("memberId") String id, @RequestParam("memberPass") String password,
            @RequestParam("referer") String referer, HttpSession session, Model model, HttpServletRequest request)  {
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		
		if(vo.getMemberId() == null || vo.getMemberId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}

		MemberVO member = memberService.getMember(vo);
		
		if(member!=null) {
			if(id.equals(member.getMemberId()) && password.equals(member.getMemberPass())) {
				session.setAttribute("member", member);
				
			      if(referer != null && !referer.equals("")) {
                      return "redirect:" + referer;
                  } else {
                      return "redirect:index.jsp";
                  }

			}else {
				model.addAttribute("msg", "아이디 또는 비밀번호가 잘못되었습니다");
				return "login";
			}
		}else {
			model.addAttribute("msg", "아이디 또는 비밀번호가 잘못되었습니다");
			return "login";
		}
		
	}
	
	// 일반 로그인
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request, Model model) {
		
		String referer = request.getHeader("Referer"); // 이전페이지의 정보를 담고 있는 
        model.addAttribute("referer", referer.substring(referer.lastIndexOf("/")+1, referer.length()));
		System.out.println(referer.substring(referer.lastIndexOf("/")+1, referer.length()));
		return "login"; 
	}
	
	
	// 로그아웃 
	@RequestMapping("/logout.do")
	public String logout(HttpSession session ) {

		session.invalidate();
		
		return "redirect:index.jsp";
	}
	
	// 회원가입
	@RequestMapping("/signUp.do")
	public String signUp() {
		return "signup";
	}
	

}
