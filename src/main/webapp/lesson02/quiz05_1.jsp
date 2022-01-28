<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<%
		int length = Integer.valueOf(request.getParameter("length"));
	 	String[] types = request.getParameterValues("unit");
	 	
	 	double in = length * 0.393701;
	 	double yd = length * 0.0328084;
	 	double ft = length * 0.0109361;
	 	double m = length* 0.01;
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= length%>cm</h3>
		<hr>
		
		<h2>
			<%
				for (String type : types) {
					if (type.equals("inch")) { 
						out.print(in + " in" +"<br>");
					} else if (type.equals("yard")) {
						out.print(yd + " yd" +"<br>");
					} else if (type.equals("feet")) {
						out.print(ft + " ft" +"<br>");
					} else if (type.equals("meter")) {
						out.print(m + " m" + "<br>");
					}
				}
			%>
		</h2>
	</div>
</body>
</html>