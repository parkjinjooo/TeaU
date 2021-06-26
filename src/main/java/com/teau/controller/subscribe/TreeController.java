package com.teau.controller.subscribe;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.member.MemberVO;
import com.teau.biz.subscribe.SubTeaVO;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.subscribe.impl.TreeServiceImpl;

@Controller
public class TreeController {
	@Autowired
	@Qualifier("treeService")
	private TreeServiceImpl treeService;
	
    @RequestMapping(value="/insertSubTree.do", produces="application/json; charset=utf8")
	@ResponseBody // Viewresolver로 넘어가는 것을 막기 위해, json형태로 받음. 그래서 json형태로 받은 것을 modelAtrribute를 통해 vo객체에 담아준다-인서트하기 위해서
	
	public String insertSub(@ModelAttribute SubVO vo, HttpServletRequest request) throws IOException {
    	HttpSession session = request.getSession();
    	MemberVO member = (MemberVO) session.getAttribute("member");
    	member.setMemberSub("1");
    	
		treeService.insertSub(vo);
		return "나무구독 신청이 완료되었습니다.";
	}
	
    @RequestMapping(value="/updateSubTree.do", produces="application/json; charset=utf8")
    @ResponseBody
    public String updateSub(SubVO vo) throws IOException{
		treeService.updateSub(vo);
		System.out.println("구독이 수정 되었습니다.");
		return "나무 구독이 수정되었습니다.";
		/* return "redirect:getSubTree.do"; */
	}
	
	@RequestMapping("/deleteSubTree.do")
	public String deleteSub(HttpServletRequest request) throws IOException{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		member.setMemberSub("0");
		
		SubVO vo = new SubVO();
		vo.setSubUser(member.getMemberId());
		System.out.println("현재 로그인 중인 멤버 아이디"+member.getMemberId());
		
		treeService.deleteSub(vo);
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/getSubTree.do")
	public String getSub() throws IOException{
//		treeService.getSub(vo);
//		model.addAttribute("subTree", treeService.getSub(vo));
		return "redirect:mypage.do";
	}
	
	//나무 구독 데이터 조회
	@RequestMapping("/getTeaList.do")
	
	public String getTeaList(HttpServletRequest request, Model model) {
		System.out.println("나무 차 목록 출력 처리");
		List<SubTeaVO> list = treeService.getTeaList();
//		for(SubTeaVO tea : list) {
//			System.out.println(tea.toString());
//		}
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");	
		// "member"은 나중에 필요시 "user"로 바꿔서 넘겨줘도 ok
		model.addAttribute("teaList", list);
		model.addAttribute("user", member);
		System.out.println("현재 로그인 중인 멤버 아이디"+(member.getMemberId()));
		
		
		return "WEB-INF/JSP/subscribe_tree.jsp";
	}

	

}
