package com.inc.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.Product;

@Repository
public class ProductDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<Product> inputList() {
		return sqlSession.selectList("product.inputList");
	}
	
	public List<Product> remainList() {
		return sqlSession.selectList("product.remainList");
	}
	
	public List<Product> outputList() {
		return sqlSession.selectList("product.outputList");
	}

	public void addInput(Product product) {
		sqlSession.insert("product.addInput", product);
	}

	public Product getRemain(String name) {
		return sqlSession.selectOne("product.getRamin", name);
	}

	public void editRemain(Product product) {
		sqlSession.update("product.editRamin", product);
		
	}

	public void addRemain(Product product) {
		sqlSession.insert("product.addRemain", product);
	}

	public void addOutput(Product product) {
		sqlSession.insert("product.addOutput", product);
	}
	
}
