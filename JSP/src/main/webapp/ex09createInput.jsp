<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<style>

	div, fieldset {
		margin : 20px auto;
		text-align : center;
	}
	input{
	margin : 3px auto;
	}

</style>

</head>
<body>

	<!--  ���� ��÷ ���� -->
	
	<div>
	
	
	<fieldset>
	<legend>������÷�ۼ�</legend> <!--  ����  -->
		<form action ="ex09randomWinner.jsp"  method = "post">

		���� : <input type="text" name = "title" placeholder="���� ���� �޴���?">
		<br>

		<%
		int num = Integer.parseInt(request.getParameter("num"));

		for (int i = 1; i <= num; i++) {
			out.print("������" + i + ":");
			out.print("<input type = 'text' name = 'item'><br>");
		}
		%>
		
		<input type="submit" value="����">

	</form>
	</fieldset>
	</div>


</body>
</html>	
