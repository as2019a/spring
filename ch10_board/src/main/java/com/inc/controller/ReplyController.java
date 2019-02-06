package com.inc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.inc.domain.Reply;
import com.inc.domain.User;
import com.inc.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ReplyService replyService;
	
	@RequestMapping(value="/reply/insert", method=RequestMethod.POST)
	public String reply(@ModelAttribute Reply reply) {
		reply.setUsers_id(((User) session.getAttribute("user")).getId());
		replyService.add(reply);
		return "redirect:/board/views?id="+reply.getBoard_id();
	}
	
	@RequestMapping(value="/reply/rereply", method=RequestMethod.POST)
	public String rereply(@ModelAttribute Reply reply) {
		reply.setUsers_id(((User) session.getAttribute("user")).getId());
		replyService.addRereply(reply);
		return "redirect:/board/views?id="+reply.getBoard_id();
	}
}
