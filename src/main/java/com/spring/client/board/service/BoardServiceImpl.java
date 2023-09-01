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
	
//	@Setter(onMethod_ = @Autowired)
//	private ReplayDao replyDao;

	   //글목록 구현+검색
	@Override
	public List<BoardVO> boardList(BoardVO bvo){
	   List<BoardVO> list = null;
	   list = boardDAO.boardList(bvo);
	      
	   return list;
	}
	   
	@Override
	public int boardListCnt(BoardVO bvo) {
	   int result = 0;
	   result = boardDAO.boardListCnt(bvo);
	      
	   return result;
	}
	
	//글입력 구현
	@Override
	public int boardInsert(BoardVO bvo) {
		int result = 0;
		result = boardDAO.boardInsert(bvo);
		
		return result;
	}
	
	@Override
	public BoardVO boardDetail(BoardVO bvo) {
		boardDAO.readCntUpdate(bvo); // 조회수 증가 메서드 서비스에서 명시할 필요가 없음
		
		BoardVO detail = boardDAO.boardDetail(bvo);
		if(detail !=null) {
			detail.setB_content(detail.getB_content().toString().replaceAll("\n", "<br/>"));
			
		}
		
		return detail;
	}
	
	@Override
	public int pwdConfirm(BoardVO bvo) {
		int result = 0;
		result = boardDAO.pwdConfirm(bvo);
		return result;
	}
	
	public BoardVO updateForm(BoardVO bvo) {
		BoardVO updateData = null;
		updateData = boardDAO.boardDetail(bvo);
		return updateData;
	}
	
	public int boardUpdate(BoardVO bvo) {
		int result = 0 ;
		
		result = boardDAO.boardUpdate(bvo);
		
		return result;
	}
	
	 public int boardDelete(BoardVO bvo) {
		 
		int result =  boardDAO.boardDelete(bvo);
		
		return result;
	 }
	 

}
