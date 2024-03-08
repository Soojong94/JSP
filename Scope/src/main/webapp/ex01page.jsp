<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- 

	Scope - JSP 내장객체저장 영역

	저장할 수 있는 범위가 다름
	page -> request -> session -> application 


	page - 현재 JSP 안에서만 저장 및 사용 가능
	request - 요청에 따른 저장 및 사용 가능
	session - 브라우저에 관련된 서버에 저장 및 사용 가능
	application - 전체 공유 서버 영역
	
 --%>

<%
	// 각 scope 영역에 데이터 담기
	pageContext.setAttribute("page", "OK"); // 데이터 타입이 Object로 upcasting 되어 저장됨
	request.setAttribute("request", "OK");
	session.setAttribute("session", "OK");
	application.setAttribute("application", "OK");
	
%>
<h2>현재 페이지는 ex01page.jsp 입니다</h2>
page : <%=pageContext.getAttribute("page") %>
<br>
request : <%=request.getAttribute("request") %>
<br>
session : <%=session.getAttribute("session") %>
<br>
application : <%=application.getAttribute("application") %>


<%

	// request 영역을 다른 페이지로 전달하는 방법
	// - forward 페이지 전환
	// url 변동 없음
	RequestDispatcher rd = request.getRequestDispatcher("ex02page.jsp");
	rd.forward(request, response);
	
	

%>


</body>
</html>