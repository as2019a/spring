package com.inc.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.inc.domain.Book;

@Controller
public class AjaxController {
	
	@RequestMapping(value="/ajax/view", method=RequestMethod.GET)
	public ModelAndView view() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/WEB-INF/views/ajax/view.jsp");
		return mv;
	}
	
	@RequestMapping(value="ajax/request", method=RequestMethod.POST)
	@ResponseBody
	public String request(@RequestBody Book book) {
		System.out.println(book.getName());
		System.out.println(book.getPrice());
		for(String author : book.getAuthors()) {
			System.out.println(author);
		}
		return "success";
	}
	
	@RequestMapping(value="/ajax/response", method=RequestMethod.GET)
	@ResponseBody
	public List<Book> response() {
		List<Book> bookList = new ArrayList<>();
		Book book1 = new Book();
		book1.setName("APIs");
		book1.setPrice(15000);
		book1.setAuthors(new String[] {"존프레드"});
		
		Book book2 = new Book();
		book2.setName("월드리포트");
		book2.setPrice(9500);
		book2.setAuthors(new String[] {"존프레드"});
		
		Book book3 = new Book();
		book3.setName("세계역사");
		book3.setPrice(12500);
		book3.setAuthors(new String[] {"존프레드"});
		
		Book book4 = new Book();
		book4.setName("여행가이드");
		book4.setPrice(22000);
		book4.setAuthors(new String[] {"존프레드"});
		
		Book book5 = new Book();
		book5.setName("금융사전");
		book5.setPrice(13000);
		book5.setAuthors(new String[] {"존프레드"});
		
		Book book6 = new Book();
		book6.setName("월드리포트");
		book6.setPrice(9500);
		book6.setAuthors(new String[] {"존프레드"});
		
		bookList.add(book1);
		bookList.add(book2);
		bookList.add(book3);
		bookList.add(book4);
		bookList.add(book5);
		bookList.add(book6);
		
		return bookList;
	}
	
}
