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
public class SeedController {
	@Autowired
	@Qualifier("seedService")
	private SubService seedService;
	
	// 구독 등록
	@RequestMapping("/insertSubSeed.do")
	public String insertSub(SubVO vo) throws IOException {
		seedService.insertSub(vo);
		return "redirect:getSubSeed.do";
	}
	
	// 구독 수정
	@RequestMapping("/updateSubSeed.do")
	public String updateSub(SubVO vo) throws IOException {
		seedService.updateSub(vo);
		return "redirect:getSubSeed.do";
	}
	
	// 구독 해지
	@RequestMapping("/deleteSubSeed.do")
	public String deleteSub(SubVO vo) throws IOException{
		seedService.deleteSub(vo);
		return "redirect:getSubSeed.do";
	}
	
	// 구독 정보 조회
	@RequestMapping("/getSubSeed.do")
	public String getSub(SubVO vo, Model model) throws IOException{
		model.addAttribute("subSeed", seedService.getSub(vo));
		return "mypage.do";
	}
	

}
