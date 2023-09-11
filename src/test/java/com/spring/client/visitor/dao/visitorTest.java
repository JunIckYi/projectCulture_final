package com.spring.client.visitor.dao;


import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import com.spring.client.visitor.vo.VisitorVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
public class visitorTest {
	
	@Setter(onMethod_ = @Autowired)
	private VisitCountDAO visitCountDAO;
	
	@Test
	public void insertVisitor(){
		VisitorVO vvo = new VisitorVO();
		vvo.setVISIT_ID("admin");
		log.info(vvo.toString());
		visitCountDAO.insertVisitor(vvo);
		
	}
	

}
