package com.inc.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.inc.domain.Product;
import com.inc.exception.ProductException;
import com.inc.service.ProductService;
import com.inc.service.ProductServiceImpl;

@Controller
public class ProductController {
	
	@Autowired
	//@Qualifier("productServiceTx")
	private ProductService productService;
	
	@RequestMapping(value="/product/list",
					method=RequestMethod.GET)
	public String productList(Model model) {
		model.addAttribute("productMap", 
						   productService.productMap());
		model.addAttribute("inputProduct", new Product());
		model.addAttribute("outputProduct", new Product());
		System.out.println(productService.productMap());
		return "/product/list";
	}
	
	@RequestMapping(value="/product/add/input", method=RequestMethod.POST)
	public String productAddInput(
			@ModelAttribute(value="inputProduct") @Valid Product product,
			BindingResult bindingResult, Model model) {
		//System.out.println("상품입고, 시간:"+System.currentTimeMillis());
		if(bindingResult.hasErrors()) {
			model.addAttribute("productMap",productService.productMap());
			model.addAttribute("outputProduct", new Product());
			return "/product/list";
		}
		productService.addInput(product);
		return "redirect:/product/list";
	}
		
		@RequestMapping(value="/product/add/output", 
				method=RequestMethod.POST)
		public String productAddOutput(
				@ModelAttribute(value="outputProduct") @Valid Product product,
				BindingResult bindingResult, Model model) {
		try {
			productService.addOutput(product);
		} catch (ProductException e) {
			model.addAttribute("productMap", 
					productService.productMap());
			model.addAttribute("error", e.getMessage());
			model.addAttribute("inputProduct", new Product());
			model.addAttribute("outputProduct", new Product());
			return "/product/list";
		}
		
		return "redirect:/product/list";
	} 
}