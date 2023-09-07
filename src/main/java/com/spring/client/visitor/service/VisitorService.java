package com.spring.client.visitor.service;

import com.spring.client.visitor.vo.VisitorVO;

;

public interface VisitorService {
	

	public void insertVisitor(VisitorVO vvo);
	public int visitsByToday();
	public int visitsByTotal();
}
