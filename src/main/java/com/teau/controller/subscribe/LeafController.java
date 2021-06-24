package com.teau.controller.subscribe;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.user.UserVO;

@Controller
public class LeafController {
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;
	
	
	@RequestMapping(value="/insertSubLeaf.do", produces = "application/text; charset=utf8")
	@ResponseBody // viewResolver로 넘어가는 것을 방지 // Model은 json타입으로 오는 정보들을 vo로 맞춰주기 위히여
	public String insertSub(@ModelAttribute SubVO vo, Model model) throws IOException {
//		if (stringValue.equals("수정")) {
//			
//		}else {
//			
//		}

		leafService.insertSub(vo);
		return "구독 신청이 완료되었습니다.";
	}
	
	@RequestMapping("/updateSubLeaf.do")
	public String updateSub(SubVO vo) {
		
		leafService.updateSub(vo);
		return "redirect:subscribe_leaf.do";
	}
	
	@RequestMapping("/deleteSubLeaf.do")
	public String deleteSub(HttpServletRequest request) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		
		SubVO vo = new SubVO();
		vo.setSubUser(user.getMemberId());
		System.out.println(user.getMemberId());
		leafService.deleteSub(vo);
		return "redirect:mypage.do";
	}
	
	@RequestMapping("/getSubLeaf.do")
	public String getSub() {
		return "redirect:mypage.do";
	}
	
//	@RequestMapping("/getSubListLeaf.do")
//	public String getSubList(@RequestParam("slUser") String slUser, Model model) {
//		SubVO vo = new SubVO();
//		vo.setUser(slUser);
//		model.addAttribute("subLeafList", leafService.getSubList(vo));
//		System.out.println(leafService.getSubList(vo));
//		return "redirect:mypage.do";
//	}
	
}
