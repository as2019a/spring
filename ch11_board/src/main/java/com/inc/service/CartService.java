package com.inc.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.dao.CartDao;
import com.inc.dao.ProductDao;
import com.inc.domain.Cart;
import com.inc.domain.Product;
import com.inc.exception.CartAreadyExistExcetion;
import com.inc.exception.CartDeleteIllegalException;
import com.inc.exception.ProductModelValidationException;

@Service
public class CartService {
	
	@Autowired
	private CartDao cartDao;
	
	@Autowired
	private ProductDao productDao;
	
	public void insert(Cart cart) throws CartAreadyExistExcetion {
		Product remainProduct = productDao.selectOne(cart.getProduct_model());
		if(remainProduct == null) {
			throw new ProductModelValidationException();
		}
		Cart remainCart = cartDao.selectOne(cart);
		if(remainCart != null) {
			throw new CartAreadyExistExcetion();
		}
		
		cartDao.insert(cart);
	}

	public List<Cart> selectList(String id) {
		return cartDao.selectList(id);
	}

	public int getTotal(List<Cart> cartList) {
		int total = 0;
		
		for(Cart cart : cartList) {
			total += cart.getProduct().getPrice() * (1-cart.getProduct().getPrice() * cart.getCount());
		}
		
		return total;
	}

	public void update(int id, int count) {
		Map<String, Integer> map = new HashMap<>();
		map.put("id", id);
		map.put("count", count);
		cartDao.update(map);	
	}

	public void delete(int id, String user_id) throws CartDeleteIllegalException {
		Map<String, Object> map = new HashMap<>();
		map.put("id", id);
		map.put("users_id", user_id);
		int result = cartDao.delete(map);
		if(result == 0) {
			throw new CartDeleteIllegalException();
		}
		
	}

}
