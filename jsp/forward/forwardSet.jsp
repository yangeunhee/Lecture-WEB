<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("id", request.getParameter("id") );	// request공유영역에 id를 등록시킨다.
	%>

	<%-- <c:set var="id" value="${ param.id }" scope="request"/> <!-- 위와 같은 말 --> --%>
	
	<h2>결과화면</h2>
	<c:if test="${ param.id eq 'admin' }">
	<jsp:forward page="admin.jsp"/><br>
	<!-- 사실 응답하는 것은 admin.jsp인데 url주소를 보면 forwardSet.jsp가 응답한거처럼 보인다.
	보안 뛰어남. 그리고 여기 위에 결과화면이라는 글자는 나오지 않음 
	왜냐면 실제 응답하는건 admin.jsp이기 때문
	forward는 응답하는 주체 자체가 바뀐다. -->
	</c:if>
	<c:if test="${ param.id ne 'admin' }">
	<%-- ${ param.id }님 환영합니다<br> --%>
	<jsp:forward page="user.jsp"/>
	</c:if>
</body>
</html>