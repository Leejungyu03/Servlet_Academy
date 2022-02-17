<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
<%-- 
		flow
	
		1) 유저 추가: ex02.jsp(input 폼화면)  -> ex02_insert(서블릿. insert 쿼리)   ->   ex02_1.jsp(유저 목록. select 쿼리)
		2) 유저 삭제: ex02_1.jsp(유저 목록. select 쿼리) 삭제 클릭 ->  ex02_delete(서블릿. delete 쿼리)   -> ex02_1.jsp(유저 목록. select 쿼리)  
		
--%>
	<form method="post" action="/lesson04/ex02_insert">
		<p>
			<strong>이름</strong>
			<input type="text" name="name"><br>
		</p>
		
		<p>
			<strong>생년월일</strong>
			<input type="text" name="yyyymmdd"><br>
		</p>
		
		<p>
			<strong>자기소개</strong><br>
			<textarea rows="5" cols="50" name="introduce"></textarea><br>
		</p>
		
		<p>
			<strong>이메일</strong>
			<input type="text" name="email"><br>
		</p>
		
		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>