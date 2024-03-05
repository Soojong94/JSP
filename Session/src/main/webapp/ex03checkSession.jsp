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
	String name = (String) session.getAttribute("name");

	if (name == null) {
		out.print("<script> alert('10초동안 아무런 행동을 하지 않아 메인이지로 이동합니다');");
		out.print("location.href='https:www.naver.com';</script>");
	
	} else {

		out.print(name + "님 환영합니다.");
	}
	%>

</body>
</html>