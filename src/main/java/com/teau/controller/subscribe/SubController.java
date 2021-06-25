package com.teau.controller.subscribe;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.subscribe.SubService;
import com.teau.biz.subscribe.SubVO;
import com.teau.biz.subscribe.impl.TreeServiceImpl;
import com.teau.biz.user.UserVO;

@Controller
public class SubController {
	
	@Autowired
	@Qualifier("seedService")
	private SubService seedService;
	
	@Autowired
	@Qualifier("leafService")
	private SubService leafService;

	@Autowired
	@Qualifier("treeService")
	private TreeServiceImpl treeService;
	
	// 구독 메인 
	@RequestMapping("/subscribe_main.do")
	public String main(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");
		
		model.addAttribute("user", user);
		return "WEB-INF/JSP/subscribe_main.jsp";
	}
	
	// 씨앗구독
	@RequestMapping("/subscribe_seed.do")
	public String seed(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO) session.getAttribute("user");
		
		model.addAttribute("user", user);
		return "WEB-INF/JSP/subscribe_seed.jsp";
	}
	
	// 새싹구독
	@RequestMapping("/subscribe_leaf.do")
	public String leaf(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		
		model.addAttribute("user", user);
		return "WEB-INF/JSP/subscribe_leaf.jsp";
	}
	
	// 나무구독
	@RequestMapping("/subscribe_tree.do")
	public String tree() {		
//		HttpSession session = request.getSession();
//		MemberVO member = (MemberVO)session.getAttribute("member");	
//		// "member"은 나중에 필요시 "user"로 바꿔서 넘겨줘도 ok
//		model.addAttribute("member", member);		
//		System.out.println(teaList);
//		
//		for(SubTeaVO tea : teaList) {
//			System.out.println(tea.toString());
//		}
//		model.addAttribute("teaList", treeService.getTeaList());
//		return "WEB-INF/JSP/subscribe_tree.jsp";
		// getTeaList에서 세션의 User 객체 뽑아온다 
		return "/getTeaList.do";
	}
	
	// 씨앗구독 수정
	@RequestMapping(value = "/subseedupdate.do", produces = "application/text; charset=utf8")
	@ResponseBody		
		public String seedUpdate(@RequestParam Map<String, String> paramMap) throws JsonProcessingException {
		SubVO sub = new SubVO();
		sub.setSubUser(paramMap.get("memberId"));

		SubVO subInfo = seedService.getSub(sub);

		Map<String, Object> hashMap = new HashMap<String, Object>();

		hashMap.put("subInfo", subInfo); // VO객체를 "subInfo"라는 이름으로 map에 담음.

		ObjectMapper mapper = new ObjectMapper(); // VO객체를 사용하기 위해 상위의 오브젝트를 쓰겠다고 선언
			// string을 json으로 변경
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);

		return json;
		}
	
	// 새싹 구독 수정
	@RequestMapping(value = "/subleafupdate.do", produces = "application/text; charset=utf8")
	@ResponseBody
	public String leafUpdate(@RequestParam Map<String, String> paramMap) throws JsonProcessingException {
		SubVO sub = new SubVO();
		sub.setSubUser(paramMap.get("memberId"));
		
		SubVO subInfo = leafService.getSub(sub);
		
		Map<String, Object> hashMap = new HashMap<String, Object>();
		
		hashMap.put("subInfo", subInfo); // VO 객체를 담는다 
		
		ObjectMapper mapper = new ObjectMapper(); // 데이터 가공 
		
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap); // java를 json으로
		
		return json;
	}
	
	// 나무 구독 수정
	@RequestMapping(value="/subtreeupdate.do", produces="application/text; charset=utf8")
	@ResponseBody
	public String updataLoad(@RequestParam Map<String, String> paramMap) throws JsonProcessingException{
		SubVO sub = new SubVO();
		sub.setSubUser(paramMap.get("memberId"));
		
		// subInfo라는 이름으로 유저의 Sub객체 전체를 담는다
		SubVO subInfo = treeService.getSub(sub);
		
		Map<String, Object> hashMap = new HashMap<String, Object>();
		
		hashMap.put("subInfo", subInfo); 
		ObjectMapper mapper = new ObjectMapper(); //데이터 가공
		//자바를 JSON으로 변환
		String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashMap);
		
		return json;
	}
	
	// 마이페이지
	@RequestMapping("/mypage.do")
	public String my(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		UserVO user = (UserVO)session.getAttribute("user");
		
		SubVO vo = new SubVO();
		vo.setSubUser(user.getMemberId());
		
		if (seedService.getSub(vo) != null) {
			SubVO seed = seedService.getSub(vo);
			model.addAttribute("sub", seed);

		} else if (leafService.getSub(vo) != null) {
			SubVO leaf = leafService.getSub(vo);
			model.addAttribute("sub", leaf);

		} else if(treeService.getSub(vo) != null) {
			SubVO tree = treeService.getSub(vo);
			model.addAttribute("sub", tree);
		} else {			
			model.addAttribute("sub", null);
		} // 확인 필요 

		return "WEB-INF/JSP/mypage.jsp";
	}
	
}
