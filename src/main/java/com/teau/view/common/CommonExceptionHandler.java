package com.teau.view.common;

import org.springframework.ui.Model;

public class CommonExceptionHandler {
	
	public String handleArithmeticException(Exception e, Model model) {
		model.addAttribute("exception", e);
		return "/common/arithmeticError";
	}
	
	public String handleNullPointerException(Exception e, Model model) {
		model.addAttribute("exception", e);
		return "/common/nullPointerError";
	}
	
	public String handleException(Exception e, Model model) {
		model.addAttribute("exception", e);
		return "/common/error";
	}
}
