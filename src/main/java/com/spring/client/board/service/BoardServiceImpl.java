package com.spring.client.board.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.client.board.dao.BoardDAO;
import com.spring.client.board.vo.BoardVO;

import lombok.Setter;

@Service
public class BoardServiceImpl implements BoardService {
	
	@Setter(onMethod_ = @Autowired)
	private BoardDAO boardDAO;
	
	//글목록 구현
	@Override
	public List<BoardVO> boardList(){
		List<BoardVO> list = null;
		list = boardDAO.boardList();
		return list;
	}
	
	//글입력 구현
	@Override
	public int boardInsert(BoardVO bvo) {
		int result = 0;
		result = boardDAO.boardInsert(bvo);
		
		return result;
	}
}
