<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies(); // 쿠키 날아옴 (최대 한 사이트당 20개)
	
	StringBuilder sb = new StringBuilder();
	
	if(cookies != null){
		for(Cookie c : cookies){
			String cName = c.getName();
			String cValue = c.getValue();
		
			sb.append("쿠키이름 : " + cName + ", " + "쿠키 값 : " + cValue + "<br>");			
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 정보</h2>
	<%= sb.toString() %>
	<a href="makeForm.jsp">쿠키 설정 이동</a>
</body>
</html>