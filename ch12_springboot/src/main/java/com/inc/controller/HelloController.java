package com.inc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HelloController {
	
	@GetMapping("/hello")
	public String hello(@RequestParam String name, Model model) {
		model.addAttribute("msg", name+"님 안녕하세요?");
		return "/hello";
	}
}
