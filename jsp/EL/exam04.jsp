<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
		자바빈즈클래스를 이용해서 객체 하나를 만들고싶다	
	 --%>
<%
	 BoardVO b = new BoardVO();
	 
	 b.setNo(10);
	 b.setTitle("hello");
	 
	 // pageContext 영역에 객체 등록
	 // 이름 : board 값 : 생성된 BoardVO 객체
	 pageContext.setAttribute("board", b); // 공유영역에 올리기 / b대신 new BoardVO()써도 됨
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- jsp -->
	no : <%= b.getNo() %> <br>
	<%-- no : <%= pageContext.getAttribute("board") %> --%> <!-- 이렇게하면 객체 주소값나옴 -->
	no : <%= ((BoardVO)pageContext.getAttribute("board")).getNo()%> <br>
	
	title : <%= b.getTitle() %><br>
	title : <%= ((BoardVO)pageContext.getAttribute("board")).getTitle() %><br>
	
	<!-- EL -->
	el no : ${ board.no }<br>
	el no : ${ board['no']}<br> <!-- 이것도 되는데 잘 안씀 -->
	
	el title : ${ board.title }<br>
	el test : ${ board.test }<br>	<!-- 멤버변수로 없는 값을 get메소드로만 선언해줘도 값을 가져올 수 있다. 멤버변수가 아닌 get메소드를 호출함을 알 수 있다. -->
	<%-- el aaa : ${ board.aaa }<br> --%>	<!-- 자바빈즈에선 getAaa()호출해야함 -> 메소드 없음 -> 500err -->
</body>
</html>