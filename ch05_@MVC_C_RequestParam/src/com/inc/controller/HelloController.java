package com.inc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Component
@Controller
@RequestMapping(value="/hello")
public class HelloController {
	
	@RequestMapping(value="/sayhello", method=RequestMethod.GET)
	public ModelAndView sayHello(@RequestParam(required=false) String name) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", name+"님 환영합니다.");
		mv.setViewName("/WEB-INF/views/hello.jsp");
		return mv;
	}
	
	@RequestMapping(value="/sayhello", method=RequestMethod.POST)
	public ModelAndView sayHellopost(@RequestParam(defaultValue="guest") String name) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "hello "+name);
		mv.setViewName("/WEB-INF/views/hello.jsp");
		return mv;
	}
	
	@RequestMapping(value="/saybye", method=RequestMethod.POST,
					params={"name=LYS"})
	public ModelAndView sayBye(@RequestParam String name) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", name+"님 안녕히가세요.");
		mv.setViewName("/WEB-INF/views/bye.jsp");
		return mv;
	}
}
