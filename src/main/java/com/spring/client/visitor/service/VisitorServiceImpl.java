package com.spring.client.visitor.service;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;


import com.spring.client.visitor.dao.VisitCountDAO;
import com.spring.client.visitor.vo.VisitorVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class VisitorServiceImpl implements VisitorService{
	
	
		@Setter(onMethod_ = @Autowired)
		private VisitCountDAO visitCountDAO;
	
	
		@Override
		public void insertVisitor(VisitorVO vvo){
			visitCountDAO.insertVisitor(vvo);
			
		}
		@Override
		public int visitsByToday() {
			int result =visitCountDAO.visitsByToday();
			
			return result;
				
		}
		
		public int visitsByTotal() {
			int result =visitCountDAO.visitsByTotal();
			
			return result;
			
		}
	

	

}
