<%@page import="com.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>전화번호부</h1>
	<table border="1px">

		<thead>
			<tr>
				<th>순번</th>
				<th>이름</th>
				<th>나이</th>
				<th>번호</th>
				<th>주소</th>
			</tr>

		</thead>
		<tbody>
			<%-- session 에서 받아온 list 정보를 아래에 출력하시오 --%>

			<%
			
			ArrayList<MemberDTO> list = (ArrayList<MemberDTO>)session.getAttribute("list");
			
			for (int i = 0; i < list.size(); i++) {
				out.print("<tr>");
				out.print("<td>" + (i + 1));
				out.print("<td>" + list.get(i).getName() + "</td>");
				out.print("<td>" + list.get(i).getAge() + "</td>");
				out.print("<td>" + list.get(i).getPhone() + "</td>");
				out.print("<td>" + list.get(i).getAddr() + "</td>");
				out.print("</tr>");
			}
			
			
			%>


		</tbody>

	</table>


</body>
</html>