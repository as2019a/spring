package com.inc.dao;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.inc.domain.Board;

@Repository
public class BoardDao {
	
	@Autowired
	private SqlSession session;
	
	public List<Board> selectList(Map<String, Integer> map){
		return session.selectList("board.selectList", map);
	}

	public int getTotalCount() {
		return session.selectOne("board.totalCount");
	}

	public void insert(Board board) {
		session.insert("board.insert", board);
	}

	public Board selectOne(int id) {
		return session.selectOne("board.selectOne", id);
	}

	public void hitUp(int id) {
		session.update("board.hitUp", id);
	}

	public void delete(int id) {
		session.delete("board.delete", id);
	}

	public void update(Board board) {
		session.update("board.update", board);
	}
	
}