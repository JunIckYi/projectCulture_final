package com.spring.admin.notice.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.admin.login.vo.AdminVO;
import com.spring.admin.notice.service.NoticeService;
import com.spring.admin.notice.vo.NoticeVO;
import com.spring.client.board.vo.BoardVO;
import com.spring.common.vo.PageDTO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/notice/*")
@Slf4j
public class NoticeController {
	
	@Setter(onMethod_ = @Autowired)
	public NoticeService noticeService;
	
	@GetMapping("/board")
	public String noticeList(@SessionAttribute("adminLogin") AdminVO adminLogin,@ModelAttribute NoticeVO nvo, Model model, RedirectAttributes ras) {
		log.info("공지 게시판 호출");
		String url = "";
		
		if(adminLogin != null) {
			List<NoticeVO> list = noticeService.noticeList(nvo);
			model.addAttribute("notice", list);
			
			// 총 레코드 수 확인
			int total = noticeService.noticeCnt(nvo);
			// 페이징처리
			model.addAttribute("paging", new PageDTO(nvo, total));
			model.addAttribute("adminLogin",adminLogin);
			 url = "client/admin/notice/nBoard";
			 
		}else {
			ras.addFlashAttribute("errorMsg","로그인 실패");
			 url = "redirect:admin/loginPage";
		}
		return url;
	}
	
	
	
	
	
	
	@PostMapping("/boardDetail")
	public String boardDetail(@SessionAttribute("adminLogin") AdminVO adminLogin,NoticeVO nvo, Model model) {
		noticeService.readCntUpdate(nvo);
		String url = "";
		if(adminLogin != null) {
			NoticeVO detail = noticeService.noticeDetail(nvo);
			log.info("공지 게시판 자세히 호출 : " + detail);
			model.addAttribute("detail", detail);
			url ="client/admin/notice/nBoardDetail";
		}else {
			
			url = "redirect:admin/loginPage";
		}

		
		return url;
	}
	
	@PostMapping("/nBoardUpdateForm")
	public String nBoardUpdateForm(NoticeVO nvo, Model model) {
		NoticeVO detail= noticeService.noticeDetail(nvo);
		log.info("nBoardWhite 호출 성공");
		model.addAttribute("detail", detail);
	
		return "client/admin/notice/nBoardUpdateForm";
	}
	
	
	@PostMapping("/nBoardUpdate")
	public String nBoardUpdate(@SessionAttribute("adminLogin") AdminVO adminLogin,NoticeVO nvo, Model model) {
		noticeService.nBoardUpdate(nvo);
		log.info("nBoardUpdate 호출 성공");
		
		model.addAttribute("adminLogin",adminLogin);
		
		return "client/admin/adminBoard";
	}
	
	@PostMapping(value="/pwdConfirm", produces= "text/plain; charset=UTF-8")
	@ResponseBody
	public String pwdConfirm(AdminVO avo) {
		log.info("pwdConfirm 호출 성공" + avo);
		String value = "";
		int result = noticeService.pwdConfirm(avo);
		 
		if(result==1) {
			value="성공";
		}else {
			value="실패";
		}
		log.info("result = " + result);
		
		return value;
	}
	
	   @PostMapping("/nboardDelete")
	   public String nboardDelete(@SessionAttribute("adminLogin") AdminVO adminLogin, NoticeVO nvo, Model model) {
		   log.info("nboardDelete 호출 성공");
		   log.info("getNoc_num = " + nvo.getNoc_num());
		   
		   int result = 0;
		   String url = "";
		   
		   
		   result = noticeService.nboardDelete(nvo);
		   model.addAttribute("adminLogin",adminLogin);
		   if(result == 1) {
			   url="client/admin/notice/nBoard";
		   }else {
			   url="redirect:/notice/boardDetail?noc_num=" +nvo.getNoc_num();
			   
		   }
		   
		   return "redirect:/notice/board"; 
	   }
	
		@GetMapping("/nWriteForm")
		public String nWriteForm(@SessionAttribute("adminLogin") AdminVO adminLogin,NoticeVO nvo, Model model) {
			log.info("nWriteForm 호출 성공");
			log.info("adminLogin정보 "+ adminLogin);
			String url = "";
			model.addAttribute("adminLogin", adminLogin);
			if(adminLogin != null) {
				url ="client/admin/notice/nWriteForm";
			}else {
				url = "redirect:admin/loginPage";
			}
			return url;
		}
		
		
		
		
		@PostMapping("/nBoearInsert")
		public String nBoearInsert(@SessionAttribute("adminLogin") AdminVO adminLogin,NoticeVO nvo, Model model) {
			log.info("nBoearInsert 호출 성공");
			log.info("NoticeVO 값은? "+nvo);
			String url = "";
			int result=0;
			result = noticeService.nBoearInsert(nvo);
			log.info("result 값은? "+result);
			if(adminLogin != null) {
				if(result == 1) {
					url = "redirect:board";
				}else {
					url = "client/admin/notice/nWriteForm";
				}
			}else {
				url = "redirect:admin/loginPage";
			}
			return url;
		}
	
	
	
	
	
	
}
