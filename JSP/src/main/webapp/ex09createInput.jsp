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

	<!--  랜덤 당첨 게임 -->
	
	<div>
	
	
	<fieldset>
	<legend>랜덤당첨작성</legend> <!--  제목  -->
		<form action ="ex09randomWinner.jsp"  method = "post">

		주제 : <input type="text" name = "title" placeholder="오늘 점심 메뉴는?">
		<br>

		<%
		int num = Integer.parseInt(request.getParameter("num"));

		for (int i = 1; i <= num; i++) {
			out.print("아이템" + i + ":");
			out.print("<input type = 'text' name = 'item'><br>");
		}
		%>
		
		<input type="submit" value="시작">

	</form>
	</fieldset>
	</div>


</body>
</html>	
