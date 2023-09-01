package com.spring.client.board.dao;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.spring.admin.login.dao.AdminLoginDao;
import com.spring.admin.login.vo.AdminVO;

import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
public class AdminTest {
	

	@Setter(onMethod_ = @Autowired )
	private AdminLoginDao adminLoginDao;
	
	@Test
	public void loginTest() {
		AdminVO avo = new AdminVO();
		
		avo.setMid("admin");
		avo.setMpw("1234");
		
		AdminVO result = adminLoginDao.loginProcess(avo);
		
		log.info(result.toString());
		
		
	}

}
