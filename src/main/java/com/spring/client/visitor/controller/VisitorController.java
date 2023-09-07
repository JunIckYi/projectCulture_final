package com.spring.client.visitor.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import org.springframework.web.bind.annotation.SessionAttributes;


import com.spring.client.visitor.service.VisitorService;
import com.spring.client.visitor.vo.VisitorVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Controller
@SessionAttributes("adminLogin")
@RequestMapping("/visitors/*")
@Slf4j
public class VisitorController {

	@Setter(onMethod_ = @Autowired)
	private VisitorService VisitorService;


	public void insertVisitor(VisitorVO vvo) {
		
		
	}
}
