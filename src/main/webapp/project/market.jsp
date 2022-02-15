<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style type="text/css">
	#wrap {
		width: 1600px;
		margin: auto
	}
	header {
		height: 100px;
		background-color: rgb(255, 127, 80);
	}
	h1 {
		line-height: 100px;
	}
	nav {
		height: 100px;
		background-color: rgb(255, 127, 80);
	}
	nav ul {
		line-height: 70px;
	}
	nav ul li a {
		font-size: 26px;
		color: white;
		font-weight: bold;
	}
	section .cover {
		width: 450px;
		height: 400px;
		border: 2px solid rgb(255, 127, 80);
		margin: 30px 0 10px 0;
	}
	section .cover img {
		width: 400px;
		height: 250px;
		margin: 18px;
	}
	section .cover .title {
		width: 80px;
		height: 50px;
	}
	section .cover .price {
		
	}
	section .cover .writer {
		width: 80px;
		height: 50px;
	}
</style>
</head>
<body>
	<div id="wrap" class="">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<jsp:include page="section.jsp" />
		
		
		
	</div>
</body>
</html>