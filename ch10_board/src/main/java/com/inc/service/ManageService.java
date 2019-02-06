package com.inc.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.dao.ProductDao;
import com.inc.exception.CategoryDuqlicatedException;

@Service
public class ManageService {
	
	@Autowired
	private ProductDao productDao;
	
	public void updateCategory(String category, String newCategory) {
		Map<String, String> map = new HashMap<>();
		map.put("category", category);
		map.put("newCategory", newCategory);
		productDao.updateCategory(map);
	}
		

	public void deleteCategory(String category) {
		productDao.deleteCategory(category);
	}

	public void insertCatrgory(String category) throws CategoryDuqlicatedException {
		int count = productDao.categoryCount(category);
		if(count == 1) {
			throw new CategoryDuqlicatedException();
		}
		productDao.categoryInsert(category);
	}

	
	
	
}
