package com.inc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inc.domain.Cart;
import com.inc.domain.User;
import com.inc.service.CartService;
import com.inc.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage(Model model) {
		User user = (User)session.getAttribute("user");
		List<Cart> cartList = cartService.selectList(user.getId());
		model.addAttribute("cartList", cartList);
		model.addAttribute("total", cartService.getTotal(cartList));
		return "/user/mypage";
	}
}
