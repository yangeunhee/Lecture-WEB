<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
   
<%
	Map<String, String> b = new HashMap<>();

	b.put("no", "10");
	b.put("title", "hello");
	
	pageContext.setAttribute("board", b); // 공유객체 생성
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	no : <%= b.get("no") %> <br>
	title : <%= b.get("title") %> <br>
	
	el no : ${ board.no }<br> <!-- Map은 key로 접근 가능 -->
	el title : ${ board.title }<br>
	
	el no : ${ board['no']}<br>	<!-- 이것도 되는데 잘 안씀 -->
	
	el aaa : ${ board.aaa }<br> <!-- borad가 가진 Map객체에서 키가 aaa인 값을 뽑아줘 -> 없음 -> Empty -->
</body>
</html>