package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/plain");

		Date now = new Date();
		PrintWriter out = response.getWriter();
		out.println(now);
		
		// formatter
		SimpleDateFormat format = new SimpleDateFormat("오늘의 날짜는 yyyy년 mm월 dd일");
		out.print(format.format(now));
	}
}
