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
<!-- 1���� 100������ ���� ���Ͻÿ� -->
<h1><%= num %></h1>

<!--  
	  css �ּ� : /**/
	  java �ּ� : // : �ڹ��ּ��� ������ �������� ������ ����
	  html �ּ� :<!--
	  
 -->

</body>
</html>