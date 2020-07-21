<%@page import="java.util.List, java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<String> nameList = new ArrayList<>();

	nameList.add("홍길동");
	nameList.add("윤길동");
	nameList.add("강길동");
	
	pageContext.setAttribute("names", nameList);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	첫 번째 이름 : <%= nameList.get(0) %><br>
	두 번째 이름 : <%= nameList.get(1) %><br>
	세 번째 이름 : <%= nameList.get(2) %><br>
	<%-- 네 번째 이름 : <%= nameList.get(3) %><br>  500err --%>
	
	el 첫 번째 이름 : ${ names[0] }<br>
	el 두 번째 이름 : ${ names[1] }<br>
	el 세 번째 이름 : ${ names[2] }<br>
</body>
</html>