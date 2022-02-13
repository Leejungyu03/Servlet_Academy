package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>íìì ë³´</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>ìì´ë</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>ì´ë¦</th><td>" + name + "</td></tr>");
		out.print("<tr><th>ìì¼</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>ì´ë©ì¼</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
//		주석 테스트
		
	}
}
