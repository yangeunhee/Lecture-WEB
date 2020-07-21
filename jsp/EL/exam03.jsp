<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     	/*
     	공유영역에 객쳋 등록방법
		공유영역.setAttribute("이름", "값");
    	공유영역 4가지 : pageContext, request, session, application
  		*/
  		
  		// pageContext 영역에 msg라는 이름으로 page영역에 객체 등록 등록
  		pageContext.setAttribute("msg", "page영역에 객체 등록");
    
    	// request 영역에 "id"라는 이름으로 "홍길동" 등록
    	request.setAttribute("id", "홍길동");
    	
    	request.setAttribute("msg", "request영역에 객체 등록");
    	
    	String message = (String)pageContext.getAttribute("msg");
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	empty msg : ${ empty msg }<br>
	
	<%--
		EL에서의 공유영역 4가지
		1. pageScope
		2. requestScope
		3. sessionScope
		4. applicationScope
	--%>
	
	msg : ${ msg }<br>
	id : ${ id }<br>
	
	request msg : ${ requestScope.msg }<br>
	message : <%= message %><br>
	message : <%= pageContext.getAttribute("msg") %><br>
	request message : <%= request.getAttribute("msg") %><br>
	request message : <%= ((String)request.getAttribute("msg")).length() %>
</body>
</html>