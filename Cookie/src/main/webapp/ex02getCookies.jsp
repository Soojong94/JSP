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

// Client �� ���� Cookie �� �����ͼ� Ȯ���ϴ� ���

// 1. Client �� ���� ��Ű ��������
Cookie[] cookies = request.getCookies();

// 2. ��Ű�� �̸��� �� Ȯ���ϱ�
for(int i = 0 ; i < cookies.length; i++){
	out.print(cookies[i].getName() + ":");
	out.print(cookies[i].getValue());
	out.print("<br>");	
}

%>


</body>
</html>