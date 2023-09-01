package com.spring.admin.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.admin.login.controller.AdminLoginController;
import com.spring.admin.login.dao.AdminLoginDao;

import com.spring.admin.login.vo.AdminVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class AdminLoginServiceImpl implements AdminLoginService {

	@Setter(onMethod_ = @Autowired)
	private AdminLoginDao adminLoginDao;
	
	
	
	public AdminVO loginProcess(AdminVO login) {
		AdminVO adminlogin = adminLoginDao.loginProcess(login);
		return adminlogin;
	}
	
	public int mgMyPageUpdate(AdminVO avo){
		log.info("mgMyPageUpdate service 호출 성공");
		int result = adminLoginDao.mgMyPageUpdate(avo);
		
		
		return result;
				
	}
	
	public AdminVO adminInfoList(AdminVO avo) {
		
		AdminVO result = adminLoginDao.adminInfoList(avo);
		return result;
	}
}
