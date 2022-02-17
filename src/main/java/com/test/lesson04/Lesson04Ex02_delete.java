package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/ex02_delete")
public class Lesson04Ex02_delete extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		MysqlService mysqlService = MysqlService.getInstance(); // DB 연결을 위한 객체 생성(싱글턴이라 한개만 생성됨)
		mysqlService.connection(); // DB 연결

		// -- 쿼리 수행
		String deleteQuery = "delete from `new_user` where id=" + id;
		try {
			mysqlService.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		mysqlService.disconnect(); // DB 해제

		// 목록 화면 이동
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}