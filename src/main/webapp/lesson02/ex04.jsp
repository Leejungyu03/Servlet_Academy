<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
<%
	// Map을 테이블로 표현하기
	// 
	Map<String, Integer> map = new HashMap<>();
	map.put("korean", 85);
	map.put("english", 72);
	map.put("math", 90);
	map.put("science", 100);
%>
	<table border="1">
	<%
		Iterator<String> iter = map.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.next();
	%>
		<tr>
			<th><%-- <%= key %> --%>
			<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
			%>
			</th>
			<td><%= map.get(key)%></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>