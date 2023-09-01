package com.spring.client.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.spring.client.board.vo.BoardVO;

@Mapper
public interface BoardDAO {
	public List<BoardVO> boardList(BoardVO bvo); // 게시판 조회
	public int boardListCnt(BoardVO bvo);		 // 검색한 레코드 수
	
	
	public int boardInsert(BoardVO bvo); 		 // 게시판 입력
	public int readCntUpdate(BoardVO bvo);		 // 조회수 업데이트
	public BoardVO boardDetail(BoardVO bvo);	 // 게시판 상세
	public int pwdConfirm(BoardVO bvo);			 // 비밀번호 체크
	public int boardUpdate(BoardVO bvo);		 // 게시판 수정
	public int boardDelete(BoardVO bvo); 		 // 게시판 삭제

}
