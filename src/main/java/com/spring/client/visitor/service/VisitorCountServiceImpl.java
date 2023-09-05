package com.spring.client.visitor.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.spring.admin.notice.dao.NoticeDAO;
import com.spring.client.visitor.dao.VisitorCountDao;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class VisitorCountServiceImpl implements VisitorCountService{
	@Autowired
	private final VisitorCountDao visitorCountDao;

	    @Autowired
	    public VisitorCountServiceImpl(VisitorCountDao visitorCountDao) {
	        this.visitorCountDao = visitorCountDao;
	    }

	    public void increaseDailyVisitorCount(Date date) {
	        visitorCountDao.increaseDailyVisitorCount(date);
	    }

	    public Integer getDailyVisitorCount(Date date) {
	        return visitorCountDao.getDailyVisitorCount(date);
	    }

	    public Integer getTotalVisitorCount(Date date) {
	        return visitorCountDao.getTotalVisitorCount(date);
	    }

}
