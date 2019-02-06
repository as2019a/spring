package com.inc.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;

import javax.management.modelmbean.ModelMBean;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.Book;

@Controller
public class RetrunTypeController {
	
	@RequestMapping(value="/returntype/modelandview", method=RequestMethod.GET)
	public ModelAndView modelAndView() {
		ModelAndView mv = new ModelAndView();
		Book book = new Book();
		book.setName("ModelAndView");
		book.setPrice(1000);
		mv.addObject("book", book);
		mv.setViewName("/returntype/view");
		return mv;
	}
	
	//데이터는 모델객체에 뷰의 경로를 리턴
	@RequestMapping(value="/retruntype/string")
	public String string(Model model) {
		Book book = new Book();
		book.setName("String");
		book.setPrice(2000);
		model.addAttribute(book);
		return "/returntype/view";
	}
	
	//데이터는 모델객체에 뷰의 경로는 생략
	@RequestMapping(value="/returntype/object")
	public Book object() {
		Book book = new Book();
		book.setName("Object");
		book.setPrice(9000);
		return book;
	}
	
	//데이터는 모델객체에 뷰의 경로는 생략
	@RequestMapping(value="/returntype/void")
	public void voidType(Model model) {
		Book book = new Book();
		book.setName("Void");
		book.setPrice(3000);
		model.addAttribute("book", book);
	}
	
}
