package com.inc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.dao.ProductDao;
import com.inc.domain.Product;

@Service
public class ProductService {
	
	@Autowired
	private ProductDao productDao;
	
	public List<Product> getProductList(Map<String, String> map) {
		return productDao.selectListByCategory(map);
	}

	public int dualcheck(String model) {
		return productDao.productCount(model);
	}

	public void insert(Product product) {
		productDao.insert(product);
	}
	
	
}
