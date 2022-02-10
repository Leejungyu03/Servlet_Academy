<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Melong</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style type="text/css">
    header {
        height: 80px;
    }
    .input-group {
        height: 40px;
    }
    nav {
        height: 50px;
        line-height: 50px;
    }
    nav ul li a {
        color: black;
        font-size: 18px;
        font-weight: bolder;
    }
    .profile {
        height: 250px;
        border: 1px solid green;
    }
    .profile img {
        margin: 20px;
    }
    .profile .text {
        font-size: 17px;
        font-weight: 600;
    }
    .song table thead tr th {
        font-size: 17px;
        font-weight: 800;
    }
    .song table tbody tr td {
        font-size: 17px;
        font-weight: 600;
    }

    footer {
        border-top: 1px solid gainsboro;
    }
    footer .copyright {
        color: grey;
        font-size: 13px;
    }
</style>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp" />
		<jsp:include page="nav.jsp" />
		<jsp:include page="profile.jsp" />
		<jsp:include page="song.jsp" />
		<jsp:include page="footer.jsp" />
	</div>
</body>
</html>