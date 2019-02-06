package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.inc.domain.User;
import com.inc.service.UserService;

public class UserListController implements Controller{
	
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<User> userList = userService.getList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList); //U와 u는 다르다.("소문자(a~z)","a~z");
		mv.setViewName("/WEB-INF/views/user/list.jsp");
		return mv;
	}
	
}
