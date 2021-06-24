package com.teau.controller.subscribe;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;

@Controller
public class TreeController {
	@Autowired
	@Qualifier("treeService")
	private SubService treeService;
	
	@RequestMapping("/insertSubTree.do")
	public String insertSub(SubVO vo, Model model) throws IOException {
		// 구독-insert / 수정-update 분기 처리
//		if (stringValue.equals("수정")) {
//		return "updateSubTree.do";
//	}
		System.out.println("구독 저장");
		treeService.insertSub(vo);
		// 구독 완료 후 보여줄 화면
		return "redirect:getSubTree.do";
	}
	
	@RequestMapping("/updateSubTree.do")
	public String updateSub(SubVO vo) throws IOException{
		System.out.println("구독 수정");
		treeService.updateSub(vo);
		return "redirect:getSubTree.do";
	}
	
	@RequestMapping("/deleteSubTree.do")
	public String deleteSub(SubVO vo) throws IOException{
		treeService.deleteSub(vo);
		return "redirect:getSubTree.do";
	}
	
	@RequestMapping("/getSubTree.do")
	public String getSub(SubVO vo, Model model) throws IOException{
		model.addAttribute("subTree",treeService.getSub(vo));
		return "mypage.do";
	}

	

}
