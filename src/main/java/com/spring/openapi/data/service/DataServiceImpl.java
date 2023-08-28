package com.spring.openapi.data.service;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;


import org.springframework.stereotype.Service;




@Service
public class DataServiceImpl implements DataService {
	
	@Override
	public StringBuffer chungnamList()  throws Exception{
		//URL url = new (site);
		
		//요청 url 및 전달해 주어야 하는 파라미터
		StringBuffer site = new StringBuffer("https://tour.chungnam.go.kr/_prog/openapi/");
		site.append("?" + URLEncoder.encode("func","UTF-8") + "=" + URLEncoder.encode("tour","UTF-8"));
		site.append("&" + URLEncoder.encode("start","UTF-8") + "=" + URLEncoder.encode("1","UTF-8"));
		site.append("&" + URLEncoder.encode("end","UTF-8") + "=" + URLEncoder.encode("10","UTF-8"));
		
		
		//별도의 클래스로, 메서드를 선언하여 아래의 내용 정의
		URL url = new URL(site.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		//요청방식 선택 (GET, POST)
		conn.setRequestMethod("GET");
		//서버 Response Data를 xml(application/xml), json (application/xml) 형식의 타입으로 요청 
		conn.setRequestProperty("Accept","application/xml");
		
		int resCode = conn.getResponseCode();
		System.out.println("응답코드 : " + resCode);
		
		
		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
		String inputLine;
		StringBuffer output = new StringBuffer();
		
		while((inputLine = in.readLine()) != null){
			output.append(inputLine);
			
			
		}
		
		return output;
	}
	
	


}
