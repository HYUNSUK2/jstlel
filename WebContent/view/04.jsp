<%@page import="vo.UserVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	UserVo vo1 = new UserVo();
	vo1.setNo( 10L );
	vo1.setEmail( "kickscar1@gmail.com" );
	pageContext.setAttribute( "userVo1", vo1 );
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>객체 접근</h3>
	=========== scope test1 ============
	<br>	
	page scope : ${pageScope.userVo1.no }
	<br>	
	request scope : ${requestScope.userVo2.no }
	<br>	
	session scope : ${sessionScope.userVo3.no }
	<br>	
	application scope : ${applicationScope.userVo4.no }
	<br>	
	
	=========== scope test2 ============
	<br>	
	page scope : ${userVo1.no }
	<br>	
	request scope : ${userVo2.no }
	<br>	
	session scope : ${userVo3.no }
	<br>	
	application scope : ${userVo4.no }
	<br>	
	
	
</body>
</html>