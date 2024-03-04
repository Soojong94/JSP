<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
fieldset {
	margin: 20px auto;
	text-align: center;
}
</style>
</head>
<body>


	<fieldset>
		<legend>랜덤당첨결과</legend>

		<%
		
		request.setCharacterEncoding("EUC-KR");
		
		
		String[] item = request.getParameterValues("item");
		String title = request.getParameter("title");

		Random ran = new Random();
		int index = ran.nextInt(item.length);

		out.print(title);
		out.print("<br>");
		out.print(item[index]);
		
		%>


	</fieldset>

</body>
</html>