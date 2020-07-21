<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:import url="one.jsp" />
	<jsp:include page="one.jsp" />
	phone : ${ phone }<br>
	파라미터 설정 호출<br>
	<c:import url="one.jsp">
		<c:param name="name" value="hong, gil-dong"/>
		<c:param name="age" value="24" />
		</c:import>
	<h2>인클루드 후</h2>
	<h2>외부 사이트 인클루드</h2>
	<c:import url="http://www.kopo.ac.kr" /> <!-- action에선 오류뜨지만 jstl은 외부를 import해올 수 있기 때문에 가능 -->
</body>
</html>