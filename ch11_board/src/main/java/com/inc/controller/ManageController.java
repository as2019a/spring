package com.inc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.inc.service.ManageService;
import com.inc.service.ProductService;

@Controller
public class ManageController {
	
	@Autowired
	private ManageService manageService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value="/manage", method=RequestMethod.GET)
	public String manage() {
		return "/manage/view";
	}
	
	@RequestMapping(value="/manage/category/update", method=RequestMethod.GET)
	public String updateCategory(@RequestParam String category, 
								@RequestParam(value="new") String newCategory) {
		manageService.updateCategory(category, newCategory);
		return "redirect:/manage";
	}
	
	@RequestMapping(value="/manage/category/delete", method=RequestMethod.GET)
	public String deleteCategory(@RequestParam String category) {
		manageService.deleteCategory(category);
		return "redirect:/manage";
	}
	
	@RequestMapping(value="/manage/category/insert", method=RequestMethod.POST, 
					produces="text/html; charset=utf-8")
	public String insert(@RequestParam String category, Model model) {
		try {
			manageService.insertCatrgory(category);
			model.addAttribute("msg", "등록에 성공했습니다.");
		}catch (Exception e) {
			model.addAttribute("msg", "이미 존재하는 카테고리입니다.");
		}
		
		model.addAttribute("url", "/manage");
		
		return "/etc/result";
	}
	
	@RequestMapping(value="/manage/product/dualcheck", method=RequestMethod.POST)
	@ResponseBody
	public String dualcheck(@RequestParam String model) {
		int count = productService.dualcheck(model);
		if(count == 0) {
			return "notdulplicated";
		}else {
			return "duplicated";
		}
	}
}
