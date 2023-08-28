package com.spring.client.board.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


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
	
	
	/****************************************************************************
	 * 
	 * 비밀번호확인 
	 * @param b_num : 본인글 여부를 확인 할 게시글 번호
	 * @param b_pwd : 입력한 비밀번호 
	 * @return int로 result를 0 또는 1로 리턴을 할 수도 있고,
	 * 			String으로 result 값을 "성공 or 실패, 일치 or 불일치"를 리턴할 수도 있다. (현재 문자열 리턴)
	 * 참고 : @ResponseBody는 전달된 뷰를 통해서 출력하는 것이 아니라 HTTP ResponseBody에 직접 출력하는 방식,. (비동기식 요청 시 사용)
	 * 		prosuces   속성은 지정한 미디어 타입과 관련된 응답을 생성하는데 사용한 실제 컨텐트 타입을 보장.
	 * 
	 * *****************************************************************************/
	

	@PostMapping(value="/pwdConfirm", produces= "text/plain; charset=UTF-8")
	@ResponseBody
	public String pwdConfirm(BoardVO bvo) {
		log.info("pwdConfirm 호출 성공");
		String value = "";
		int result = boardService.pwdConfirm(bvo);
		 
		if(result==1) {
			value="성공";
		}else {
			value="실패";
		}
		log.info("result = " + result);
		
		return value;
	}
	
	
	/*********************************************************************************
	 * 글수정 폼 출력하기
	 * @param : b_num
	 * @return : BoardVO
	 ********************************************************************************/
	
	   @GetMapping(value = "/updateForm")
	   public String updateForm(@ModelAttribute BoardVO bvo, Model model) {
	      log.info("updateForm 호출 성공");
	      log.info("b_num = " + bvo.getB_num());
	      
	      BoardVO updateData = boardService.updateForm(bvo);
	      
	      model.addAttribute("updateData", updateData);
	      return "client/board/updateForm"; 
	   }
	   
		/*********************************************************************************
		 * 글수정 구현하기
		 * @param : BoardVO
		 * 참고 : RedirectAttributes 객체는 리다이렉트 시점 (return "redirect : /경로 ")에
		 * 한번만 사용되는 데이터를 전송할 수 있는 addFlashAttribute()라는 기능을 지원한다.
		 * addFlashAttribute() 메서드는 브라우저까지 전송되기는 하지만, URI상에는 보이지 않는 숨겨진 데이터의
		 * 형태로 전달 된다. 
		 ********************************************************************************/
	   
	   
	 
	   @PostMapping("/boardUpdate")
	   public String boardUpdate(@ModelAttribute BoardVO bvo /* , RedirectAttributes ras */) {
		   log.info("boardUpdate 호출 성공");
		   
		   int result = 0;
		   String url = "";
		   
		   
		   result = boardService.boardUpdate(bvo);
		   //ras.addFlashAttribute("boardVO", vo);
		   
		   if(result == 1) {
			   //아래  url은 수정 후 상세 페이지로 이동
			   //url="/board/boardDetail";
			 //url="/board/boardList";
			   url="/board/boardDetail?b_num=" +bvo.getB_num();
			   System.out.println("0번");
			   System.out.println("글번호 : " + bvo.getB_num() + "result : " + result );
		   }else {
			   System.out.println("1번");
			   System.out.println("글번호 : " + bvo.getB_num()+ "result : " + result);
			   url="/board/updateForm?b_num=" +bvo.getB_num();
		   }
		   
		  return "redirect:"+url; 
	   }
	
	   @PostMapping("/boardDelete")
	   public String boardDelete(@ModelAttribute BoardVO bvo) {
		   log.info("boardDelete 호출 성공");
		   log.info("b_num = " + bvo.getB_num());
		   
		   int result = 0;
		   String url = "";
		   
		   
		   result = boardService.boardDelete(bvo);
		   
		   if(result == 1) {
			   url="/board/boardList";
		   }else {
			   url="/board/boardDetail?b_num=" +bvo.getB_num();
			   
		   }
		   
		   return "redirect:"+url; 
	   }
	

}
