package com.spring.admin.notice.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import com.spring.admin.notice.vo.NoticeVO;


@Mapper
public interface NoticeDAO {
	
	public List<NoticeVO> noticeList(NoticeVO nvo);
	public int noticeCnt(NoticeVO nvo);
	public NoticeVO noticeDetail(NoticeVO nvo);
	public void readCntUpdate(NoticeVO nvo);
	public int nBoardUpdate(NoticeVO nvo);
	
}
