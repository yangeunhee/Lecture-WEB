<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
	http://localhost:9999/Lecture-WEB/exam02.jsp?id=aaa&name=bbb 호출했다 가정했을 때의 aaa를 출력하는 코드
	--%>
	
	<!-- 표현식 -->
	<%
		String id = request.getParameter("id");
		String[] hobbys = request.getParameterValues("hobby");
		if(hobbys == null){
			hobbys = new String[] {"파라미터 없음"};		/* 표현식은 NULL일 때 처리를 해줘야 하지만 EL은 NULL값일 땐 EMPTY라고 표현을 해서 알아서 없다고 한다. */
		}
	%>
	
	id : <%= id %> <br>
	id : <%= request.getParameter("id") %><br>
	name : <%= request.getParameter("name") %> <br>
	
	<!-- EL방식 -->
	id : ${ param.id }<br> <!-- request.getParameter("id")와 같은 의미 --> <!-- EL에서 값이 없으면 아무것도 출력되지 않음 -->
	name : ${ param.name }<br>
	
	
	<%--
		http://localhost:9999/Lecture-WEB/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie&hobby=reading
	--%>
	
	<!-- 표현식 -->
	hobby[0] : <%= hobbys[0] %><br>
	<!-- EL방식 -->
	hobby[0] : ${ paramValues.hobby[0] } <br>
	
</body>
</html>