package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Lesson04Quiz02_insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// DB 연결
		MysqlService mysqlServuce = MysqlService.getInstance();
		mysqlServuce.connection();
		
		// 쿼리 수행
		String insertQuery = "insert into `favorite` (`name`, `url`)"
				+ "values('" + name + "', '" + url + "')";
		
		try {
			mysqlServuce.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 해제
		mysqlServuce.disconnect();
		
		// 목록 화면 이동
		response.sendRedirect("/lesson04/quiz02.jsp");
	}
}
