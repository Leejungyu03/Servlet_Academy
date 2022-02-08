<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
	Calendar today = Calendar.getInstance();
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	out.print("오늘 날짜 : " + sdf.format(today.getTime()) + "<br>"); // Calendar 객체 -> Date 객체
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	//yesterday.add(Calendar.DATE, -1); // 하루 전
	yesterday.add(Calendar.MONTH, -1); // 한달 전
	yesterday.add(Calendar.YEAR, -1); // 일년 전
	out.println("어제 날짜 : " + sdf2.format(yesterday.getTime()) + "<br>");
	
	// 두 날짜 비교
	// compareTo	=> int
	// -1 0 1 기준점(today)이 크면 1, 같으면 0, 기준값이 작으면 -1
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.print("today가 더 크다.");
	} else if (result == 0) {
		out.print("두 날짜는 같다.");
	} else {
		out.print("today가 더 작다.");
	}
%>
</body>
</html>