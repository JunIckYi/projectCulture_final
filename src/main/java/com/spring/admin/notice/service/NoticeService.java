package com.spring.admin.notice.service;

import java.util.List;

import org.springframework.ui.Model;

import com.spring.admin.notice.vo.NoticeVO;

public interface NoticeService {
	
	public List<NoticeVO> noticeList(NoticeVO nvo);
	public int noticeCnt(NoticeVO nvo);
	public void readCntUpdate(NoticeVO nvo);
	public NoticeVO noticeDetail(NoticeVO nvo);
	public int nBoardUpdate(NoticeVO nvo);

	

}
