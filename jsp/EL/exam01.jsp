<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 연산자</title>
</head>
<body>
	5 + 5 = <%= 5 + 5 %> <br>
	5 + 5 = ${ 5 + 5 } <br>
	9 % 5 = ${ 9 % 5 } <br>
	9 mod 5 = ${ 9 mod 5 } <br>
	9 > 5 = ${ 9 > 5 } <br>
	9 gt 5 = ${ 9 gt 5 } <br>
	9 == 5 = ${ 9 == 5 } <br>
	9 eq 5 = ${ 9 eq 5 } <br>
	<%-- 9 ne 5 = ${ 9 ne 5 } <br> --%> <!-- 이거 인식 못하긴 하는데 실제 에러는 아님 -->
	
	(5 == 5) && (7 > 5) : ${ (5 == 5) && (7 > 5) } <br>
	(5 eq 5) && (7 gt 5) : ${ (5 eq 5) && (7 gt 5) } <br>
	
	empty str : ${ empty str }<br> <!-- 우린 str변수를 만든적이 없기 때문 -->
	empty str : ${ not empty str }<br>
	
	5의 홀/짝 판단 : ${ 5 % 2 == 0 ? "짝수" : "홀수" }<br>
	5의 홀/짝 판단 : ${ 5 mod 2 == 0 ? "짝수" : "홀수" }
	
</body>
</html>