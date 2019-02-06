package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.User;
import com.inc.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/list")
	public ModelAndView list() {
		List<User> userList = userService.getList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList); //U와 u는 다르다.("소문자(a~z)","a~z");
		mv.setViewName("/WEB-INF/views/user/list.jsp");
		return mv;
	}
	
	@RequestMapping(value="/add")
	public ModelAndView add(HttpServletRequest request) {
		
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
