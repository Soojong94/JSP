<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%-- JSP 주석 : 브라우저에서 안 보임 
	 선언문 (Declartion)
	 - 필드 또는 메소드를 만들 때 사용
--%>
<%! public int num1= 10; // 전역변수(필드 / 멤버변수 / 글로벌변수) 

// 메소드 정의 가능
	public String hello(String name){
	return name + "님 환영합니다";
}

%>
<%=hello("이름") %>
<% int num2 = 10; // Service 메소드 안의 지역변수 %>


</body>
</html>