package com.inc.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Component
@Controller
@RequestMapping(value="/hello")
public class HelloController {
	
	@RequestMapping(value="/sayhello", method=RequestMethod.GET)
	public ModelAndView sayHello(@ModelAttribute Member member) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", member.getName()+"님 환영합니다."+member.getAge());
		mv.setViewName("/WEB-INF/views/hello.jsp");
		return mv;
	}
	
	@RequestMapping(value="/sayhello/{name}", method=RequestMethod.POST)
	public ModelAndView sayHellopost(@RequestParam(defaultValue="guest") String name) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", "hello "+name);
		mv.setViewName("/WEB-INF/views/hello.jsp");
		return mv;
	}
	
	@RequestMapping(value="/saybye",method={RequestMethod.GET})
		public ModelAndView sayBye(HttpServletRequest request) {
		String name = request.getParameter("name");
		ModelAndView mv = new ModelAndView();
		mv.addObject("msg", name+"님 안녕히가세요");
		mv.setViewName("/WEB-INF/views/bye.jsp");
		return mv;
	}
	
	@RequestMapping(value="/saybye", method=RequestMethod.POST)
		public void sayByePost(
				@CookieValue Cookie name,
				@CookieValue int age) {
		/*Cookie[] cookies = request.getCookies();
		Cookie cookie = null;
		for(Cookie c : cookies) {
			if(c.getName().equals("name")) {
				cookie = c;
				break;
			}
		}*/
		System.out.println(name.getValue());
		System.out.println(age);
	
	}

}