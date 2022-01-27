<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int height = Integer.valueOf(request.getParameter("height"));
		int weight = Integer.valueOf(request.getParameter("weight"));
		
		double bmi = weight / ((height / 100.0) * (height / 100.0));
		
		String result = null;
		if (bmi >= 30) {
			result = "비만";
		} else if (bmi >= 26 && bmi <= 30) {
			result = "과체중";
		} else if (bmi >= 21 && bmi <= 25) {
			result = "정상";
		} else if (bmi <= 20) {
			result = "저체중";
		}
	%>
	<div class="container">
		<span class="text-dark display-3">BMI</span>
		<span class="display-3">측정 결과</span><br>
		<span class="display-3">당신은</span>
		<span class="display-3 text-info"><%= result%></span>
		<span class="display-3">입니다.</span><br>
		<span>BMI 수치 : <%= bmi%></span>
	</div>
</body>
</html>