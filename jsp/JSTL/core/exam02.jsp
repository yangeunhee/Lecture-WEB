<%@page import="org.apache.jasper.tagplugins.jstl.core.Remove"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	/* pageContext.setAttribute("cnt", "1");
		원래 이렇게 공유영역에 직접 추가해줬어야했지만 jstl을 활용하면 이거 안해줘도뎀
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	1값을 가지는 변수 cnt를 공유영역(page)에 설정<br>
	<c:set var="cnt" value="1"  /> <!-- 생략되어서 page영역  -->
	공유영역에 설정된 cnt값 출력<br>
	${ cnt }<br>
	변수 cnt값을 1증가<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" />
	
	cnt : ${ cnt }<br>
	request cnt : ${requestScope.cnt }<br>
	
	목적 : request영역의 cnt를 삭제<br>
	<c:remove var="cnt" scope="request"/> <!-- request영역만 삭제 -->
	<%-- <c:remove var="cnt" /> --%> <!-- 전체 삭제 -->
	cnt : ${ cnt }<br>
	request cnt : ${requestScope.cnt }<br>
</body>
</html>

<%--
		JSP						EL							JSTL
--------------------------------------------------------------------
		pageContext			pageScope					page
		request				requestScope				request
		session				sessionScope				session
		application			applicationScope			application

--%>