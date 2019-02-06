package com.inc.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.inc.domain.Product;
import com.inc.exception.ProductException;

@Service
public class ProductServiceTx implements ProductService {
	
	@Autowired
	@Qualifier("productServiceImpl")
	ProductService productService;
	
	@Autowired
	private PlatformTransactionManager txManager;
	
	@Override
	public Map<String, List<Product>> productMap() {
		return productService.productMap();
	}

	@Override
	public void addInput(Product product) {
		//트랜젝션 시작
		TransactionStatus status = txManager.getTransaction(new DefaultTransactionDefinition());
		try{
			productService.addInput(product);
		}catch(Exception e) {
			//트랜젝션 롤백
			txManager.rollback(status);
		}
		//트랜젝션 커밋
		txManager.commit(status);
	}

	@Override
	public void addOutput(Product product) throws ProductException {
		//트랜젝션 시작
		TransactionStatus status = txManager.getTransaction(new DefaultTransactionDefinition());
		try {
			productService.addOutput(product);
		}catch(Exception e) {
			//트랜젝션 롤백
			txManager.rollback(status);
		}
		//트랜젝션 커밋
		txManager.commit(status);
			
	}	
}
