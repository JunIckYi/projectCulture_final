package com.spring.admin.notice.service;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.spring.admin.login.vo.AdminVO;
import com.spring.admin.notice.vo.NoticeVO;

public interface NoticeService {
	
	public List<NoticeVO> noticeList(NoticeVO nvo);
	public int noticeCnt(NoticeVO nvo);
	public void readCntUpdate(NoticeVO nvo);
	public NoticeVO noticeDetail(NoticeVO nvo);
	public int nBoardUpdate(NoticeVO nvo);
	public int pwdConfirm(AdminVO avo);
	public int nboardDelete(NoticeVO nvo);
	public int nBoearInsert(NoticeVO nvo);
	

}
