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
	<c:set var="msg" value="<h1>hi jstl"/>
	value 속성만 지정 : <c:out value="jstl" /><br>
	msg : <c:out value="${ msg }" /><br>
	el msg : ${ msg }<br>
	msg : <c:out value="${ msg }" default="msg를 찾을 수 없습니다."/><br>
	escapeXML=true 설정<br>
	<c:out value="<hr>"/><br>
	escapeXML=false 설정 <br>
	<c:out value="<hr>" escapeXml="false"/><br>
	
</body>
</html>