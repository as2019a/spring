package com.inc.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.inc.domain.Book;

@Controller
public class BookDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}*/
	
	public List<Book> selectList(String type, String word) {
		Map<String, String> conditionMap = new HashMap<>();
		conditionMap.put("type", type);
		conditionMap.put("word", word);
		List<Book> bookList = sqlSession.selectList("book.selectList", conditionMap);
		return bookList;
	}

	public void insert(Book book) {
		sqlSession.insert("book.insert", book);
	}

	public void delete(int id) {
		sqlSession.delete("book.delete", id);

	}

	public Book selectOne(int id) {
		return sqlSession.selectOne("book.selectOne", id);
	}

	public void update(Book book) {
		sqlSession.update("book.update", book);
	}
}