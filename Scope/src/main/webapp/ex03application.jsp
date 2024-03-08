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
	String today = (String)application.getAttribute("today");
	
	if(today == null){
		application.setAttribute("today", "1"); 
	}else{
		int ctoday = Integer.parseInt(today);
		ctoday++;
		application.setAttribute("today", ctoday + ""); 
	}
	
	%>

	오늘 방문자수 : <%=application.getAttribute("today") %>

</body>
</html>