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
	
	
	
	
	


	   

	  

//	    @Override
//	    @Transactional
//	    public void insertOrUpdateVisitor(HttpServletRequest request, HttpSession session) {
//	        String visitIp = request.getRemoteAddr();
//	        String visitRefer = request.getHeader("referer");
//	        String visitAgent = request.getHeader("User-Agent");
//
//	        // 세션에 방문자 정보 저장
//	        session.setAttribute("visitIp", visitIp);
//	        session.setAttribute("visitRefer", visitRefer);
//	        session.setAttribute("visitAgent", visitAgent);
//
//	        // Visitor 객체를 생성하여 방문자 정보 저장
//	        VisitorVO visitor = new Visitor();
//	        visitor.setVisitIp(visitIp);
//	        visitor.setVisitTime(new Date());
//	        visitor.setVisitRefer(visitRefer);
//	        visitor.setVisitAgent(visitAgent);
//
//	        // 데이터베이스에 저장
//	        entityManager.createNativeQuery("INSERT INTO TB_VISITOR (VISIT_ID, VISIT_IP, VISIT_TIME, VISIT_REFER, VISIT_AGENT) " +
//	                "VALUES (VISITOR_SEQ.NEXTVAL, ?, SYSDATE, ?, ?)")
//	                .setParameter(1, visitIp)
//	                .setParameter(2, visitRefer)
//	                .setParameter(3, visitAgent)
//	                .executeUpdate();
//	    }

}
