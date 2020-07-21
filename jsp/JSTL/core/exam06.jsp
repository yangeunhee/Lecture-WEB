<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String[] names = {"홍길동", "박길동", "윤길동", "고길동"};
	pageContext.setAttribute("names", names);
	pageContext.setAttribute("namesLength", names.length-1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- varStatus 속성을 이용하여 ,찍기 -->
	<c:forEach items="${ names }" varStatus="loop">
	${ loop.first } : ${ loop.last } : ${ loop.index } : ${ loop.count }<br>
	</c:forEach>
	
	<c:forEach items="${ names }" var="name" varStatus="loop">
	${ name }
	<c:if test="${ not loop.last }">
	,
	</c:if>
	</c:forEach>
	
	<br>
	
	<c:forEach items="${ names }" var="name" varStatus="loop">
	<%-- <c:if test="${ not loop.first }"> --%>
	<%-- <c:if test="${ loop.index ne 0 }"> --%>
	<c:if test="${ loop.count != 1 }">
	,
	</c:if>
	${ name }
	</c:forEach>
	
	<br>	
	
	<!-- if조건을 이용하여 ,찍기 -->
	<c:set var="cnt" value="1" />
	<c:forEach items="${ names }" var="name">	<!-- items : 반복시킬 대상 -->
		<c:if test="${ cnt != 1 }">
		,
		</c:if>
		${ name }
		<c:set var="cnt" value="${ cnt + 1 }" />
	</c:forEach>
	<c:remove var="cnt" scope="page" />

	<br>

	<!-- fn을 이용하면 pageContext영역에 length 지정할 필요 x -->
	<c:forEach begin="0" end="${ fn:length(names) - 1 }" var="i">
		${ names[i] }<br>
	</c:forEach>

	<c:forEach begin="0" end="${ namesLength }" var="i">
			${ names[i] }<br>
	</c:forEach>
	1~10 사이의 정수 출력<br>
	<c:forEach begin="1" end="10" var="i">
	${ i }
	</c:forEach>
	<br>
	년도선택 : <select>
				<c:forEach begin="1980" end="2020" var="year" step="10"> <!-- step : 몇 씩 증가해서 출력 -->
					<option>${ year }</option>
				</c:forEach>
				<!-- <option>2020</option>
				<option>2019</option>
				<option>2018</option>
				<option>2017</option>
				<option>2016</option> -->
			</select>
</body>
</html>