package com.inc.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.inc.domain.Product;
import com.inc.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value= {"/product/list","/"}, method=RequestMethod.GET)
	public String list(@RequestParam(required=false) String category, @RequestParam(required=false) String order,
						@RequestParam(required=false) String base, @RequestParam(required=false) String type,
						@RequestParam(required=false) String text, Model model) {
		
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("order", order);
		map.put("base", base);
		map.put("type", type);
		map.put("text", text);
		
		List<Product> productList = productService.getProductList(map);
		model.addAttribute("productList", productList);
		
		return "/product/list";
	}
}
