<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${empty param.r }">
		<c:set var="nRow" value="3"/>
	</c:when>
	<c:otherwise>
		<c:set var="nRow" value="${param.r }"/>
	</c:otherwise>
</c:choose>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border='1px' cellspacing='0' cellpadding='10px'>
		<c:forEach begin="1" end="${nRow }" var="row" >
			<tr>
				<c:forEach begin="1" end="${param.c }" var="col" >
					<td>cell(${row }, ${col })</td>
				</c:forEach>	
			</tr>
		</c:forEach>
	</table>
</body>
</html>