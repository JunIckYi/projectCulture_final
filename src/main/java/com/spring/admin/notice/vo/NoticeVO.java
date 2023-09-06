package com.spring.admin.notice.vo;

import com.spring.common.vo.CommonVO;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class NoticeVO extends CommonVO{

	private int noc_num = 0;
	private String noc_title = "";
	private String noc_content = "";
	private int mno = 0;
	private String noc_write_date;
	private int readcnt = 0;
	
	private String mid;  // 게시판에 작성자 ID를 담아서 주기위한 필드 선언
}
