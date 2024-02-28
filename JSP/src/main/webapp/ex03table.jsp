<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--  첫번째방법 -->
<%

	String tag = "";
	for(int i = 1 ; i<= 10 ; i++){
		tag += "<td>" + i + "</td>";
	}

%>


	<!-- table 에 10개의 방을 만드시오 -->

	<table border = "1px solid black">
		<tr>

<!--  두번째방법 -->
			<%for (int i = 1; i <= 10; i++){%>
				<td><%=i %></td>
			<%}%>

			<%=tag %>			



		</tr> 
	</table>

</body>
</html>