package com.inc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.inc.calculator.Calculator;


public class PulsController implements Controller {
	
	private Calculator calcultor;
	
	public void setCalculator(Calculator calcultor) {
		this.calcultor = calcultor;
	}
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int first = Integer.parseInt(request.getParameter("first"));
		int second = Integer.parseInt(request.getParameter("second"));
		int result = calcultor.puls(first, second);
		ModelAndView mv = new ModelAndView();
		mv.addObject("result", result);
		mv.setViewName("/WEB-INF/views/plus.jsp");
		return mv;
	}

}
