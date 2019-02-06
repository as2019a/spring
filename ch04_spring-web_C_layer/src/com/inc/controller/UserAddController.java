package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.inc.domain.User;
import com.inc.service.UserService;

import oracle.net.aso.r;

public class UserAddController implements Controller{
	
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		
		User user = new User();
		user.setId(id);
		user.setPassword(password);
		user.setName(name);
		
		userService.add(user);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/user/list");
		return mv;
	}
	
}
