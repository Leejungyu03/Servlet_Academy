package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		String userId = request.getParameter("userId");
		String pw = request.getParameter("pw");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>사용자 정보 확인</title></head><body>");
		if (userMap.get("id").equals(userId) && userMap.get("password").equals(pw)) {
			out.print(userMap.get("name") + "님 환영합니다!");
		} else if (userMap.get("id").equals(userId)) {
			out.print("password가 일치하지 않습니다.");
		} else if (userMap.get("password").equals(pw)) {
			out.print("id가 일치하지 않습니다.");
		}
		out.print("</body></html>");
	}
//	수정
	

}
