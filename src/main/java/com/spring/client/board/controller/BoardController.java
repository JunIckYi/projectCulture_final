package com.spring.client.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.spring.client.board.service.BoardService;
import com.spring.client.board.vo.BoardVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/board/*")
@Slf4j
public class BoardController {
	
	@Setter(onMethod_ = @Autowired)
	private BoardService boardService;
	
	@GetMapping("/boardList")
	public String boardList(Model model) {
		log.info("boardList 호출 성공");
		// 전체 레코드 조회
		
		List<BoardVO> boardList = boardService.boardList();
		model.addAttribute("boardList",boardList);
		return "client/board/boardList";
		
	}
	
	@GetMapping("/writeForm")
	public String writheForm (){
		log.info("writheForm 호출 성공");
		return "client/board/writeForm" ;
	}
	
	
	@PostMapping("/boardInsert")
	public String boardInsert (BoardVO bvo, Model model){
		log.info("boardInsert 호출 성공");
		
		int result = 0;
		String url="";
	
		result = boardService.boardInsert(bvo);
		log.info("boardInsert 값불러오기 성공");
		if(result == 1) {
			url = "/board/boardList";
		}else {
			url = "/board/writeForm";
		}
		
		return "redirect:"+url;
	}
	
	@GetMapping("/boardDetail")
	public String boardDetail(@ModelAttribute BoardVO bvo, Model model) {
		log.info("boardDetail 호출 성공");
		log.info("bvo = " + bvo.getB_num());
		BoardVO detail = boardService.boardDetail(bvo);
		model.addAttribute("detail", detail);

		return "client/board/boardDetail";
	}
	
	
	

}
