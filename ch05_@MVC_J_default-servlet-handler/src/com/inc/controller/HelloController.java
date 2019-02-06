package com.inc.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.Member;

@Component
@Controller
@RequestMapping(value="/hello")
public class HelloController {
	
	@RequestMapping(value="/sayhello", method=RequestMethod.GET)
	public String sayHello(@ModelAttribute Member member,
							Model model) {
		model.addAttribute("msg", member.getName()+"님 환영합니다."+member.getAge());
		return "/hello";
	}
	
	@RequestMapping(value="/sayhello/{name}", method=RequestMethod.POST)
	public String sayHellopost(@RequestParam(defaultValue="guest") String name,
								Model model) {
		model.addAttribute("msg", "hello "+name);
		return "/hello";
	}
	
	@RequestMapping(value="/saybye",method={RequestMethod.GET})
		public String sayBye(HttpServletRequest request,
							Model model) {
		String name = request.getParameter("name");
		model.addAttribute("msg", name+"님 안녕히가세요");
		return "/bye";
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