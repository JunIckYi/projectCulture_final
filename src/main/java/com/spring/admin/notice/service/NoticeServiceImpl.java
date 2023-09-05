package com.spring.admin.notice.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.admin.notice.dao.NoticeDAO;
import com.spring.admin.notice.vo.NoticeVO;

import lombok.Setter;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Setter(onMethod_ = @Autowired)
	public NoticeDAO noticeDAO;

	@Override
	public List<NoticeVO> noticeList(NoticeVO nvo) {
		List<NoticeVO> list = noticeDAO.noticeList(nvo);
		return list;
	}

	@Override
	public int noticeCnt(NoticeVO nvo) {
		return noticeDAO.noticeCnt(nvo);
	}


	@Override
	public NoticeVO noticeDetail(NoticeVO nvo) {
		NoticeVO detail = noticeDAO.noticeDetail(nvo);
		
		if(detail!=null) {
			detail.setNoc_content(detail.getNoc_content().toString().replaceAll("\n", "<br />"));
		}
		return detail;
	}
	@Override
	public void readCntUpdate(NoticeVO nvo) {
		noticeDAO.readCntUpdate(nvo);
	}
	
	public int nBoardUpdate(NoticeVO nvo) {
		int result = 0 ;
		noticeDAO.nBoardUpdate(nvo);
		return result;
	}


}
