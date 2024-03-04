<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- ex07request.html. 에서 보낸 데이터  웹페이지에 꺼내보기 --%>

<%
	// 내장객체 request
	String goods = request.getParameter("goods");
	
%>

주문하신 상품은 <%=goods %> 입니다

</body>
</html>