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
	
	request.setCharacterEncoding("EUC-KR");
	String url = request.getParameter("url");

	if (url.equals("네이버")) {
		response.sendRedirect("https:www.naver.com");
	} else if (url.equals("다음")) {
		response.sendRedirect("https:www.daum.net");
	} else if (url.equals("구글")) {
		response.sendRedirect("https:www.google.com");
	} else if (url.equals("스마트인재개발원")) {
		response.sendRedirect("https:smhrd.or.kr");
	}
	
	%>


</body>
</html>