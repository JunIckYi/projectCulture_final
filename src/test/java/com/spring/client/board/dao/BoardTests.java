package com.spring.client.board.dao;



import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spring.client.board.vo.BoardVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
public class BoardTests {
	
	@Setter(onMethod_ = @Autowired)
	private BoardDAO boardDAO;
	
//	@Test
//	public void testBoardList() {
//		List<BoardVO> list = boardDAO.boardList();
//		log.info("boardList() 메서드 호출");
//		for(BoardVO vo : list) {
//			log.info(vo.toString());
//			
//		}
//	}
	
//	public void testInsert() {
//		BoardVO board = new BoardVO();
//		board.setB_name("김청수");
//		board.setB_title("용기가 필요할 때");
//		board.setB_content("도중에 포기하지 말라");
//		board.setB_pwd("1234");
//		
//		int count = boardDAO.boardInsert(board);
//		log.info("입력된 행의 수:"+ count);
//		
//	}
	
//	@Test
//	public void testReadCntUpdate() {
//		BoardVO bvo = new BoardVO();
//		bvo.setB_num(1);
//		
//		int count = boardDAO.readCntUpdate(bvo);
//		
//		log.info("수정된 행의 수: " + count);
//	}
//	
//	@Test
//	public void testBoardDetail() {
//		BoardVO bvo = new BoardVO();
//		bvo.setB_num(1);
//		
//		BoardVO board =  boardDAO.boardDetail(bvo);
//		
//		
//		log.info("레코드 조회 " + board.toString());
//	}
//	
//	@Test
//	public void testPwdConfirm() {
//		BoardVO bvo = new BoardVO();
//		bvo.setB_num(1);
//		bvo.setB_pwd("1234");
//		
//		
//		
//		int result = boardDAO.pwdConfirm(bvo);
//		log.info("레코드 조회 " +result);
//	}
	
//	@Test
//	public void updateTest() {
//		BoardVO bvo = new BoardVO();
//		bvo.setB_num(13);
//		bvo.setB_title("기쪽이");
//		bvo.setB_content("기쪽이 파이팅");
//		bvo.setB_pwd("1234");
//		
//		int result = boardDAO.boardUpdate(bvo);
//		
//		
//		log.info("업데이트 조회 " + result);
//	}
	
	
	@Test
	public void deleteTest() {
		BoardVO bvo = new BoardVO();
		bvo.setB_num(1);
		
		log.info("deleteTest 메소드 호출");
	}
	
	
	

}
