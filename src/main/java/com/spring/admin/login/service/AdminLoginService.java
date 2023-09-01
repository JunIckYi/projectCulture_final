package com.spring.admin.login.service;

import com.spring.admin.login.vo.AdminVO;

public interface AdminLoginService {
	
	public AdminVO loginProcess(AdminVO login);
	public int mgMyPageUpdate(AdminVO avo);
	public AdminVO adminInfoList(AdminVO avo);

}
