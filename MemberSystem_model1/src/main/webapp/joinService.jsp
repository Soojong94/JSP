<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
	// ���� 1. �Է��� id, pw, nick, phone ������ �ܼ�â�� ����Ͻÿ�
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String phone = request.getParameter("phone");
	//	System.out.println(id);
	//	System.out.println(pw);
	//	System.out.println(nick);
	//	System.out.println(phone);

	/*  JDBC  // ����. �ش� ȸ�������� member ���̺� �־��ּ���
	joinService < ��� connection : driver > DataBase

	0. �ش� driver ���� �ֱ� (ojdbc6) - ã�Ƽ� �����ϸ� ��
	1. driver ���� �ε�


	2. connection ����


	3. joinService ���� SQL �ۼ� �� ����


	4. ���� ����

	*/


	Connection conn = null;
	PreparedStatement psmt = null;

	Class.forName("oracle.jdbc.driver.OracleDriver");
	String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
	String db_id = "HR";
	String db_pw = "hr";
	conn = DriverManager.getConnection(db_url, db_id, db_pw);

	if (conn != null) {
		System.out.println("Connection ���� ����");
	} else {
		System.out.println("Connection ���� ����");
	}

	String sql = "INSERT INTO MEMBER VALUES (?,?,?,?)";
	psmt = conn.prepareStatement(sql); // connection  �� ���ؼ� sql ���� �˿�
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, nick);
	psmt.setString(4, phone);
	psmt.executeUpdate();
	
	
	int cnt = psmt.executeUpdate();
	
	System.out.println("ȸ�� ���� ���� ����");

	if (psmt != null) {
		psmt.close();
	}

	if (conn != null) {
		conn.close();
		System.out.println("���� ����");
	}
	if(cnt > 0){
		System.out.println("ȸ������ ����");
		response.sendRedirect("main.jsp");
	}else{
		System.out.println("ȸ������ ����");
		response.sendRedirect("Join.jsp");
	}
	
	%>

</body>
</html>