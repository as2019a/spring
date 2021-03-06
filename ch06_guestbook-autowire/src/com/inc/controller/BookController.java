package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
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

import com.inc.dao.BookDao;
import com.inc.domain.Book;

@Controller
@SessionAttributes(value={"editBook"})
public class BookController {
	
	@Autowired
	private BookDao bookDao;
	
	@RequestMapping(value="/book/list", 
			        method=RequestMethod.GET)
	public String list(@RequestParam(required=false) 
					   String type,
					   @RequestParam(defaultValue="") 
					   String word,
					   Model model) {
		List<Book> bookList = bookDao.selectList(type, word);
		model.addAttribute("bookList", bookList);
		return "/book/list";
	}
	
	
	@RequestMapping(value="/book/add", 
			method=RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("book", new Book());
		return "/book/add";
	}
	
	@RequestMapping(value="/book/add", 
			method=RequestMethod.POST)
	public String addPost(@ModelAttribute @Valid Book book,
						  BindingResult bindingResult,
						  HttpServletRequest request) {
		if(bindingResult.hasErrors()) {
			return "/book/add";
		}
		book.setIp(request.getRemoteAddr());
		bookDao.insert(book);
		return "redirect:/book/list";
	}
	
	@RequestMapping(value="/checkpassword", 
					method=RequestMethod.GET)
	@ResponseBody
	public String checkPassword(
			@RequestParam int id,
			@RequestParam String password) {
		Book book = bookDao.selectOne(id);
		if(book.getPassword().equals(password)) {
			return "correct";
		}else {
			return "incorrect";
		}
	}
	
	@RequestMapping(value="/book/delete", 
					method=RequestMethod.POST)
	public String delete(@RequestParam int id) {
		bookDao.delete(id);
		return "redirect:/book/list";
	}
	
	
	//@SessionAttributes사용
	//Spring Validation
	@RequestMapping(value="/book/update", 
					method=RequestMethod.GET)
	public String update(@RequestParam int id, Model model) {
		Book book = bookDao.selectOne(id);
		model.addAttribute("editBook", book);
		return "/book/update";
	}

	@RequestMapping(value="/book/update", 
					method=RequestMethod.POST)
	public String updatePost(
			@ModelAttribute(value="editBook") @Valid Book book,
			BindingResult bindingResult,
			SessionStatus sessionStatus) {
		
		if(bindingResult.hasErrors()) {
			return "/book/update";
		}
		bookDao.update(book);
		sessionStatus.setComplete();
		
		return "redirect:/book/list";
	}
}





