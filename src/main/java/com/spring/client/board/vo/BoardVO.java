package com.spring.client.board.vo;

import com.spring.common.vo.CommonVO;

import lombok.Data;
import lombok.EqualsAndHashCode;


/****************************************************************************
 * equals와  hashCode 메소드 자동 생성 시 부모 클래스의 필드 까지 감안할지 안할지에 대해서 설정시
 * callSuper = ture 로 설정하면 부모 클래스 필드 값들도 동일 한지 체크하며,
 * callSuper = false로 설정(기본값)하면 자신의 클래스의 필드 값들만 고려한다. 
 ****************************************************************************/

@Data
@EqualsAndHashCode(callSuper = false)
public class BoardVO extends CommonVO {
	private int 	b_num		=0; 	//글번호
	private String	b_name		="";	//작성자
	private String	b_title		="";	//제목	
	private String	b_content	="";	//내용
	private String	b_date;				//작성일
	private String	b_pwd		="";	//비밀번호
	private int		readcnt		=0; 	//조회수
}
