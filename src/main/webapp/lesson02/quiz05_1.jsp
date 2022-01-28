<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
		int length = Integer.valueOf(request.getParameter("length"));
	 	String unit = request.getParameter("unit");
	 	
	 	double in = length * 0.393701;
	 	double yd = length * 0.0328084;
	 	double ft = length * 0.0109361;
	 	double m = length* 0.01;
	%>
	<h1>길이 변환 결과</h1>
	<h3><%= length%>cm</h3>
	<hr>
	<h3><%= in%>in</h3>
	<h3><%= yd%>yd</h3>
	<h3><%= ft%>ft</h3>
	<h3><%= m%>m</h3>
</body>
</html>