package com.spring.client.visitor.dao;

import java.util.Date;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface VisitorCountDao {
	public void increaseDailyVisitorCount(Date date);
	public Integer getDailyVisitorCount(Date date);
	public Integer getTotalVisitorCount(Date date);

}
