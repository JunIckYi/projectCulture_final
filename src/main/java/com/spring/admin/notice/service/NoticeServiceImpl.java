package com.spring.admin.notice.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.admin.login.dao.AdminLoginDao;
import com.spring.admin.login.vo.AdminVO;

import com.spring.admin.notice.dao.NoticeDAO;
import com.spring.admin.notice.vo.NoticeVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class NoticeServiceImpl implements NoticeService {
	
	@Setter(onMethod_ = @Autowired)
	public NoticeDAO noticeDAO;
	
	@Setter(onMethod_ = @Autowired)
	private AdminLoginDao adminLoginDao;

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
	
	@Override
	public int nBoardUpdate(NoticeVO nvo) {
		int result = 0 ;
		noticeDAO.nBoardUpdate(nvo);
		return result;
	}
	
	@Override
	public int pwdConfirm(AdminVO avo) {
		int result = 0;
		result = adminLoginDao.pwdConfirm(avo);
		return result;
		
	}
	
	@Override
	public int nboardDelete(NoticeVO nvo) {
		int result = 0 ;
		noticeDAO.nboardDelete(nvo);
		return result;
		
	}
	
	@Override
	public int nBoearInsert(NoticeVO nvo) {
		int result = 0;
		log.info("nBoearInsert 서비스호출 성공" + nvo);
		result = noticeDAO.nBoearInsert(nvo);
		
		return result;
		
	}


}
