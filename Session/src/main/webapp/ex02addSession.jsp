<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%

session.setAttribute("name", "안알랴줌");


	

// 세션의 생명주기 설정
session.setMaxInactiveInterval(10);

%>

</body>
</html>