package com.inc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession session;
	
	public List<Product> 
				selectListByCategory(Map<String, String> map){
		return session.selectList(
				"product.selectListByCategory", map);
	}
	
	public List<String> selectCategoryList() {
		return session.selectList("product.categoryList");
	}

	public int categoryCount(String category) {
		return session.selectOne(
				"product.categoryCount",category);
	}

	public void categoryInsert(String category) {
		session.insert("product.categoryInsert", category);
	}

	public int productCount(String model) {
		return session.selectOne("product.productCount"
						          ,model);
	}

	public void deleteCategory(String category) {
		session.delete("product.deleteCategory", category);
	}

	public void updateCategory(Map<String, String> map) {
		session.update("product.updateCategory", map);
		
	}

	public void insert(Product product) {
		session.insert("product.insert",product);
	}

	public Product selectOne(String product_model) {
		return session.selectOne("product.selectOne", product_model);
	}
	
}