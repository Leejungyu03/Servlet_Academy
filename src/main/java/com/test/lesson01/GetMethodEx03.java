package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.valueOf(request.getParameter("age"));
		
		PrintWriter out = response.getWriter();
//		out.println("GET Method 호출");
//		out.println("userId: " + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON(Javascript Object Notation)으로 response 구성하기
		// {"user_id":"l1j1g5", "name":"이준규", "age":20}
		
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name + "\", \"age\":" + age + "}");
	}
}
