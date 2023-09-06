package com.spring.admin.notice.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spring.admin.notice.vo.NoticeVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
public class NoticeTest {
	
	@Setter(onMethod_ = @Autowired )
	private NoticeDAO noticeDAO;
	
	@Test
	public void nBoearInsert() {
		NoticeVO nvo = new NoticeVO();
		
		nvo.setMno(11);
		nvo.setNoc_content("냉무");
		nvo.setNoc_title("[공지]운영시간 안내");
		log.info("nvo"+nvo.toString());
		int result = noticeDAO.nBoearInsert(nvo);
		
		log.info("result"+result);
		
	}

}
