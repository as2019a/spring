package com.inc.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inc.domain.User;

@Controller
public class MainController {
	
	@RequestMapping(value= {"/","/main"}, method=RequestMethod.GET)
	public String main(@AuthenticationPrincipal User user) {
		System.out.println(user);
		return "/main";
	}
}
