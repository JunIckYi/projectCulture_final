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
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.admin.login.vo.AdminVO;
import com.spring.admin.notice.service.NoticeService;
import com.spring.admin.notice.vo.NoticeVO;
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
	public String boardDetail(NoticeVO nvo, Model model) {
		noticeService.readCntUpdate(nvo);
		NoticeVO detail = noticeService.noticeDetail(nvo);
		log.info("공지 게시판 자세히 호출 : " + detail);
		model.addAttribute("detail", detail);
		
		return "client/admin/notice/nBoardDetail";
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
	
	
}
