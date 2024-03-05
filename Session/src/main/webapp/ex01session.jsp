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
	
		Session
			- Client �� ������ ���������� �����ϱ� ���� ���
			
			Ư¡. - Session �������� 1�� �߱��� �ȴ�
				  - �������� �����ϴ� ���� ������ ����ȴ� 
				  or 30�� �̻� �ƹ��� �ൿ�� ���� ���� ��(�ð� ���� ����)
				  
			������ġ : Server PC
			�������� : Object (��� Ŭ������ �θ�) - ��� ���·� ���尡��
			���� : Cookie �� ���� ��������� ������
			�뷮 ���� : Server PC�� ����Ұ� ����ϴ� ��
			
			�� ���� : Client �� ���� �� �߿��� ������ ������ �� Session�� Ȱ���Ѵ�
			(�� : �α��� ����, ���� ����)
				
	 --%>

<%
	// Session �� ���̵�� ��й�ȣ�� ���� : session �� ���尴ü
	// setAttribute("name" , "value");
	// String -> Object (UpCasting)
	session.setAttribute("id", "pbk");
	
	// Session �� ����� �� �����ͼ� Ȯ���ϱ�
	// Object -> String(DownCasting)
	String id = (String)session.getAttribute("id");

	// Session �����ϱ�
	session.removeAttribute("id"); //Ư�� name �� ���ִ� ���
	session.invalidate(); // ��ü�� �����ϴ� ���
	
%>
<%=id %>
</body>
</html>