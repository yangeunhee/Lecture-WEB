<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="common.jsp" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("id", "hong");
	%>
	msg : <%= msg %><br>
	phone: ${ phone }<br>
	<h2>인클루드 전</h2>
	파라미터 미설정 호출 <br>
	<jsp:include page="one.jsp" />
	phone : ${ phone }<br>
	파라미터 설정 호출<br>
	<jsp:include page="one.jsp">
		<jsp:param name="name" value="hong, gil-dong"/>
		<jsp:param name="age" value="24"/>
	</jsp:include>
	<h2>인클루드 후</h2>
</body>
</html>