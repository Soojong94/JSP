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

int num = 0;
for (int i = 1; i<=100; i++){
	num += i;
}

%>
<!-- 1부터 100까지의 합을 구하시오 -->
<h1><%= num %></h1>

<!--  
	  css 주석 : /**/
	  java 주석 : // : 자바주석은 개발자 도구에서 보이지 않음
	  html 주석 :<!--
	  
 -->

</body>
</html>