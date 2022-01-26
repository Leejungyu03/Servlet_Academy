<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- html의 주석: 소스보기에서 보인다 -->
	<%-- jsp의 주석: 소스보기에서 보이지 않는다. --%>
	
<%
	// scriptlet
	// 자바 문법 시작 --> 자바 주석
	
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	
%>

	<strong>합계:</strong>
	<input type="text" value="<%=sum %>">
	<br>
	
<%! 
	// 선언문 - 클래스 같은 느낌
	
	// 필드
	private int num = 100;
	
	// 메소드
	public String getHelloWorld() {
		return "HelloWorld";
	}
%>

<%= getHelloWorld() %>
<br>

<%= num + 200 %>
</body>
</html>