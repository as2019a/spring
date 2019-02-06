package com.inc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ErrorController {

	@RequestMapping(value="/error/403", method=RequestMethod.GET)
	public String error403(Model model) {
		model.addAttribute("msg", "권한이 없어서 접근이 불가능한 페이지입니다.");
		return "/error";
	}
}
