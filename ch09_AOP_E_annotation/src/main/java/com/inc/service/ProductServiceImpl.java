package com.inc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.DefaultTransactionAttribute;
import org.springframework.transaction.support.DefaultTransactionDefinition;

import com.inc.domain.Product;
import com.inc.exception.ProductException;
import com.inc.repository.ProductDao;

@Service
@Transactional(rollbackFor=Exception.class, 
				propagation=Propagation.REQUIRED)
public class ProductServiceImpl implements ProductService{
	
	@Autowired
	private ProductDao productDao;

	@Transactional(propagation=Propagation.NEVER)
	public Map<String,List<Product>> productMap() {
		Map<String, List<Product>> productMap
									= new HashMap<>();
		productMap.put("inputList", productDao.inputList());
		productMap.put("remainList", productDao.remainList());
		productMap.put("outputList", productDao.outputList());
		return productMap;
	}
	
	//@Transactional(rollbackFor=Exception.class, propagation=Propagation.REQUIRED)
	public void addInput(Product product) {
		
			productDao.addInput(product);
			Product remain = productDao.getRemain(
									product.getName());
			int a = 5 / 0;
			if(remain != null) {
				product.setCount(
					product.getCount()+remain.getCount());
				productDao.editRemain(product);
			}else {
				productDao.addRemain(product);
			}
		
		
	}
	
	//@Transactional(rollbackFor=Exception.class, propagation=Propagation.REQUIRED)
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
		
			productDao.addOutput(product);
			product.setCount(
					remain.getCount()-product.getCount());
			productDao.editRemain(product);
		
	}
	
}