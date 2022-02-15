<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section>
<%	
	// DB 연결
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();
	
	
	String selectQuery = "select A.*, B.* from `seller` AS A join `used_goods` AS B on A.`id` = B.`sellerId` order by A.`id` desc";
	ResultSet result = mysqlService.select(selectQuery);
	
	while ()
%>
	<div class="cover">
		<img src="<%= result.getString("url")%>">
		<div class="title"></div>
		<div class="price"></div>
		<div class="writer"></div>
	</div>
</section>