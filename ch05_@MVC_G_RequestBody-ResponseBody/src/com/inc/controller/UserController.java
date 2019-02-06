package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.User;
import com.inc.service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public ModelAndView list() {
		List<User> userList = userService.getList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList); //U와 u는 다르다.("소문자(a~z)","a~z");
		mv.setViewName("/WEB-INF/views/user/list.jsp");
		return mv;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public ModelAndView add(@ModelAttribute User user) {
		
		userService.add(user);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/user/list");
		return mv;
	}
	
	@RequestMapping(value="/dualcheck", method=RequestMethod.GET)
	@ResponseBody
	public String dualcheck(@RequestParam String id) {
		User user = userService.get(id);
		if(user != null) {
			return "exist";
		}else {
			return "notexist";
		}
	}
}
