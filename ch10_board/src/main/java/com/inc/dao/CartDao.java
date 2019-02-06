package com.inc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.Cart;

@Repository
public class CartDao {
	
	@Autowired
	private SqlSession session;

	public void insert(Cart cart) {
		session.insert("cart.insert", cart);
	}

	//select * from cart where users_id = 'admin' <- 사용자 장바구니목록표(SQL - 오라클에서 표시)
	//Cart Dao로 Servlet으로 부터 데이터를 가져와서 jsp로 표시(장바구니 관련 부분)
	public List<Cart> selectList(String id) {
		return session.selectList("cart.selectList", id);
	}

	public int delete(Map<String, Object> map) {
		return session.delete("cart.delete", map);
	}

	public void update(Map<String, Integer> map) {
		session.update("cart.update", map);
	}

	public Cart selectOne(Cart cart) {
		return session.selectOne("cart.selectOne", cart);
	}
	
}
