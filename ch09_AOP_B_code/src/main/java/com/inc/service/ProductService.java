package com.inc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.interceptor.DefaultTransactionAttribute;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.inc.domain.Product;
import com.inc.exception.ProductException;
import com.inc.repository.ProductDao;

@Service
public class ProductService {
	
	@Autowired
	private PlatformTransactionManager txManager;
	
	@Autowired
	private ProductDao productDao;

	public Map<String,List<Product>> productMap() {
		Map<String, List<Product>> productMap
									= new HashMap<>();
		productMap.put("inputList", productDao.inputList());
		productMap.put("remainList", productDao.remainList());
		productMap.put("outputList", productDao.outputList());
		return productMap;
	}

	public void addInput(Product product) {
		//트랜젝션 시작
		TransactionStatus status = txManager.getTransaction(new DefaultTransactionDefinition());
		try{
			productDao.addInput(product);
			Product remain = productDao.getRemain(
									product.getName());
			//int a = 5/ 0;
			if(remain != null) {
				product.setCount(
					product.getCount()+remain.getCount());
				productDao.editRemain(product);
			}else {
				productDao.addRemain(product);
			}
		}catch(Exception e) {
			//트랜젝션 롤백
			txManager.rollback(status);
		}
		//트랜젝션 커밋
		txManager.commit(status);
		
	}

	public void addOutput(Product product)
						throws ProductException{
		Product remain = 
				productDao.getRemain(product.getName());
		if(remain == null) {
			throw new ProductException("존재하지 않는 상품입니다.");
		}
		if(remain.getCount() < product.getCount()) {
			throw new ProductException("수량이 충분하지 않습니다.");
		}
		TransactionStatus status = txManager.getTransaction(new DefaultTransactionDefinition());
		try {
			productDao.addOutput(product);
			product.setCount(
					remain.getCount()-product.getCount());
			productDao.editRemain(product);
		}catch (Exception e) {
			txManager.rollback(status);
		}
		txManager.commit(status);
		
	}
	
}