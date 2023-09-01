package com.spring.admin.login.dao;

import org.apache.ibatis.annotations.Mapper;

import com.spring.admin.login.vo.AdminVO;

@Mapper
public interface AdminLoginDao {
	public AdminVO loginProcess(AdminVO login);
	public int mgMyPageUpdate(AdminVO avo);
	public AdminVO adminInfoList(AdminVO avo);
	
}
