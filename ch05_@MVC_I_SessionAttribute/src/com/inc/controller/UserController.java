package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.User;
import com.inc.service.UserService;

@Controller
@RequestMapping(value="/user")
@SessionAttributes(value={"user"})
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String list(Model model) {
		List<User> userList = userService.getList();
		model.addAttribute("userList", userList); //U와 u는 다르다.("소문자(a~z)","a~z");
		return "/user/list";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String add(@ModelAttribute User user, Model model) {
		userService.add(user);
		return "/user/list";
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
		
	//수정
	@RequestMapping(value="/edit", method=RequestMethod.GET)
	public String edit(@RequestParam String id,
						Model model) {
		User user = userService.get(id);
		//model객체나 ModelAndView객체에 저장되는 데이터중
		//키값이 @SessionAttributes에 등록되어있는 데이터는
		//세션에 저장된다.
		model.addAttribute("user", user);
		return "/user/edit";
	}
	
	@RequestMapping(value="/edit", method=RequestMethod.POST)
	//@ModelAttribute는 먼저 세션에서 검사해서 이름이 일치하는
	//객체가 있다면 해당 객체의 데이터를 자신에게 복사한다.
	//그 다음 파라미터를 분석해서 적절한 데이터가 있다면 또
	//자신에게 복사한다.
	public String edit(@ModelAttribute User user,
						SessionStatus sessionStatus) {
		userService.edit(user);
		//@SessionAttributes에 의해 등록된 객체 세션에서 제거
		sessionStatus.setComplete();
		//세션 초기화
		return "redirect:/user/list";
	}
	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public String delete(@RequestParam String id, Model model) {
		userService.delete(id);
		return "/user/delete";
	}
	
}
