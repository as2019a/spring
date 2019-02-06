package com.inc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.domain.Product;
import com.inc.exception.ProductException;
import com.inc.repository.ProductDao;

@Service
public class ProductService {
	
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
		//1.product_input테이블에 튜플 추가
		productDao.addInput(product);
		//2.재고테이블을 검사해서 이미 추가된 상품이라면 수량증가
		//  처음추가되는 상품이라면 product_remain테이블에 튜플 추가
		Product remain = productDao.getRemain(
								product.getName());
		int a = 5/ 0;
		if(remain != null) {
			product.setCount(
				product.getCount()+remain.getCount());
			productDao.editRemain(product);
		}else {
			productDao.addRemain(product);
		}
		
	}

	public void addOutput(Product product)
						throws ProductException{
		Product remain = 
				productDao.getRemain(product.getName());
		//재고테이블에 해당 상품이 있는지 검사(아니면 오류)
		if(remain == null) {
			throw new ProductException("존재하지 않는 상품입니다.");
		}
		//재고테이블에 해당 상품이 있다면 수량이 충분한지 검사(아니면 오류)
		if(remain.getCount() < product.getCount()) {
			throw new ProductException("수량이 충분하지 않습니다.");
		}
		//둘다 만족 시
		//1.출고테이블에 출고내역 추가
		productDao.addOutput(product);
		//2.재고테이블에 재고수량 변경
		product.setCount(
				remain.getCount()-product.getCount());
		productDao.editRemain(product);
		
	}
	
}