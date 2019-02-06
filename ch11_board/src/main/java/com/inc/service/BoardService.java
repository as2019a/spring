package com.inc.service;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.inc.dao.BoardDao;
import com.inc.domain.Board;
import com.inc.util.Pager;

@Service
public class BoardService {
	
	@Autowired
	private BoardDao boardDao;

	public Object getPaging(int page) {
		
		int total = boardDao.getTotalCount();
		return Pager.paging(page, total);
	}

	public List<Board> getBoardList(int page) {
		int start = (page - 1) * Pager.BOARDS + 1;
		int end = start + Pager.BOARDS - 1;
		
		Map<String, Integer> map = new HashMap<>();
		map.put("start", start);
		map.put("end", end);
		
		List<Board> boardList = boardDao.selectList(map);
		setDateOrTime(boardList);
 		return boardList;
	}

	private void setDateOrTime(List<Board> boardList) {
		Calendar today = Calendar.getInstance();
		int year = today.get(Calendar.YEAR);
		int month = today.get(Calendar.MONTH) + 1;
		int day = today.get(Calendar.DATE);
		String todayStr = year+""+month+"-"+day;
		//System.out.println(todayStr);
		for(Board board : boardList) {
			String date = board.getRegdate()
					   .substring(0, board.getRegdate()
							   			  .indexOf(" "));
			String time = board.getRegdate()
					   .substring(board.getRegdate()
							   	  .indexOf(" ")+1);
			if(todayStr.equals(date)) {
				board.setRegdate(date);
			}else{
				board.setRegdate(time);
			}
		}
	}

	public void add(Board board) {
		boardDao.insert(board);
		
	}

	public Board getBoard(int id) {
		return boardDao.selectOne(id);
	}

	public void delete(int id) {
		boardDao.delete(id);
		
	}

	public void update(Board board) {
		boardDao.update(board);
	}

	
}
