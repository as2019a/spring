package com.inc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.inc.domain.Board;
import com.inc.domain.User;
import com.inc.service.BoardService;
import com.inc.util.Role;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@Autowired
	private HttpServletRequest request;
	
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public String list(@RequestParam(defaultValue="1") 
					   int page, Model model) {
		model.addAttribute("pageHTML", boardService.getPaging(page));
		model.addAttribute("boardList", boardService.getBoardList(page));
		return "/board/list";
	}
	
	@RequestMapping(value="/board/insert", method=RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("board", new Board());
		return "/board/insert";
	}
	
	@RequestMapping(value="/board/insert", method=RequestMethod.POST)
	public String addPost(
				@ModelAttribute @Valid Board board,
				BindingResult result, @AuthenticationPrincipal User user) {
		if(result.hasErrors()) {
			return "/board/insert";
		}
		
		board.setUsers_id(user.getId());
		board.setIp(request.getRemoteAddr());
		boardService.add(board);
		
		return "redirect:/board/list";
	}
	
	@RequestMapping(value="/board/view", method=RequestMethod.GET)
	public String view(@RequestParam int id, Model model, @AuthenticationPrincipal User user) {
		model.addAttribute("board", boardService.getBoard(id));
		model.addAttribute("user", user);
		return "/board/view";
	}
	
	@RequestMapping(value="/board/delete", method=RequestMethod.GET)
	public String delete(@RequestParam int id, Model model, @AuthenticationPrincipal User user) {
		Board board = boardService.getBoard(id);
		
		boolean hasRole = false;
		for(GrantedAuthority authority : user.getAuthorities()) {
			if(authority.getAuthority().equals("ROLE_ADMIN")) {
				hasRole = true;
				break;
			}
		}
		
		if(user.getId().equals(board.getUsers_id()) || Role.hasRole(user, "ROLE_ADMIN")){
			boardService.delete(id);
			model.addAttribute("msg", 
							   "게시물이 삭제되었습니다.");
			model.addAttribute("url", 
					           "/board/list");
		}else {
			model.addAttribute("msg", "잘못된 요청입니다.");
			model.addAttribute("url", 
					           "/board/view?id="+board.getId());
		}
		return "/etc/result";
	}
	
	@RequestMapping(value="/board/update", method=RequestMethod.GET)
	public String update(@RequestParam int id, Model model, @AuthenticationPrincipal User user) {
		Board board = boardService.getBoard(id);
		if(user.getId().equals(board.getUsers_id()) || Role.hasRole(user, "ROLE_ADMIN")) {
			model.addAttribute("board", board);
			return "/board/update";
		}else {
			model.addAttribute("msg", "잘못된 요청입니다");
			model.addAttribute("url", "/board/list");
			return "/etc/result";
		}
	}
		
		
	@RequestMapping(value="/board/update", method=RequestMethod.POST)
	public String update(@ModelAttribute Board board, BindingResult result, Model model, @AuthenticationPrincipal User user) {
		Board existBoard = 
				boardService.getBoard(board.getId());
		if(user.getId().equals(existBoard.getUsers_id()) || Role.hasRole(user, "ROLE_ADMIN")) {
			boardService.update(board);
			return "redirect:/board/view?id="+board.getId();
		}else {
			model.addAttribute("msg", "잘못된 요청입니다.");
			model.addAttribute("url", "/board/list");
			return "/etc/result";
		}
	
	}
		
}