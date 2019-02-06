package com.inc.service;

import java.util.List;
import java.util.Map;

import com.inc.domain.Product;
import com.inc.exception.ProductException;

public interface ProductService {
	
	public Map<String,List<Product>> productMap();
	public void addInput(Product product);
	public void addOutput(Product product) throws ProductException;
}
