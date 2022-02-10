package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01")
public class Lesson04Quiz01 extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		String selectQuery = ""
				insert into `real_estate` (`sellerId`, `address`, `area`, `type`, `price`, `rentPrice`)
				values (3, '혜라펠리스 101동 5305호', 350, '매매', 1500000, null);
		
		select *  from `real_estate`
		order by `id` desc
		limit 10;
		
	}
}
