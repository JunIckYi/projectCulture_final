package com.spring.client.visitor.dao;



import org.apache.ibatis.annotations.Mapper;

import com.spring.client.visitor.vo.VisitorVO;





@Mapper
public interface VisitCountDAO {
	public void insertVisitor(VisitorVO vvo);
	public int visitsByToday();
	public int visitsByTotal();
	
}
