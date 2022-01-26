<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! 
	int[] scores = {80, 90, 100, 95, 80};
	
	public int add(int number) {
		int sum = 0;
		for (int i = 0; i <= number; i++) {
			sum +=i;
		}
		return sum;
	}
%>
<%
	
%>
<h1>1부터 50까지의 합은 <%=add(50) %>입니다</h1>
</body>
</html>