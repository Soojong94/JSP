<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!--  ù��°��� -->
<%

	String tag = "";
	for(int i = 1 ; i<= 10 ; i++){
		tag += "<td>" + i + "</td>";
	}

%>


	<!-- table �� 10���� ���� ����ÿ� -->

	<table border = "1px solid black">
		<tr>

<!--  �ι�°��� -->
			<%for (int i = 1; i <= 10; i++){%>
				<td><%=i %></td>
			<%}%>

			<%=tag %>			



		</tr> 
	</table>

</body>
</html>