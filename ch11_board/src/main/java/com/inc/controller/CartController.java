package com.inc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inc.domain.Cart;
import com.inc.domain.User;
import com.inc.exception.CartAreadyExistExcetion;
import com.inc.exception.CartDeleteIllegalException;
import com.inc.exception.ProductModelValidationException;
import com.inc.service.CartService;

@Controller
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/cart/insert", 
			        method=RequestMethod.GET,
			        produces="text/html; charset=utf-8")
	@ResponseBody
	public String insert(@RequestParam String model,
			             HttpSession session, @AuthenticationPrincipal User user) {
		Cart cart = new Cart();
		cart.setUsers_id(user.getId());
		cart.setProduct_model(model);
		
		try {
			cartService.insert(cart);
		}catch(ProductModelValidationException e) {
			StringBuffer html = new StringBuffer();
			html.append("<script>");
			html.append("alert('존재하지 않는 상품입니다.');");
			html.append("location.href='/product/list';");
			html.append("</script>");
			return html.toString();
		}catch (CartAreadyExistExcetion e) {
			StringBuffer html = new StringBuffer();
			html.append("<script>");
			html.append("var check = confirm('이미 존재하는 상품입니다.\n 장바구니로 이동하시겠습니까?');");
			html.append("if(check){ location.href='/mypage' }");
			html.append("else{ location.href='/product/list' }");
			html.append("</script>");
			return html.toString();
		}
		
		StringBuffer html = new StringBuffer();
		html.append("<script>");
		html.append("var check = confirm('장바구니로 이동하시겠습니까?');");
		html.append("if(check){ location.href='/mypage' }");
		html.append("else{ location.href='/product/list' }");
		html.append("</script>");
		
		return html.toString();
	}
	
	@RequestMapping(value="/cart/update", method=RequestMethod.GET)
	public String update(@RequestParam int id, @RequestParam int count) {
		cartService.update(id, count);
		return "redirect:/mypage";
		
	}
	
	@RequestMapping(value="/cart/delete", method=RequestMethod.GET)
	public String delete(@RequestParam int id, Model model, @AuthenticationPrincipal User user) {
		String msg = "삭제되었습니다.";
		try {
			cartService.delete(id, user.getId());
		}catch (CartDeleteIllegalException e) {
			msg="잘못된 요청입니다.";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("url", "/mypage");
		
		return "etc/result";
	}
	
}