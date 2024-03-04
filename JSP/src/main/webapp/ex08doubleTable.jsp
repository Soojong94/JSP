<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body align="center">

	<table border="1px" align="center">

		<%
		int floor = Integer.parseInt(request.getParameter("floor"));
		int room = Integer.parseInt(request.getParameter("room"));

		out.print("<h2>" + floor + "층</h2>");
		out.print("<h2>" + room + "방</h2>");

		for (int i = 0; i < floor; i++) {
			out.print("<tr>");
			for (int j = 0; j < room; j++) {
				out.print("<td>" + j + "</td>");
			}
			out.print("</tr>");
		}
		%>

	</table>

</body>
</html>