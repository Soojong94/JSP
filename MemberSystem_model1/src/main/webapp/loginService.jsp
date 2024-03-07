<%@page import="com.model.MemberDTO"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	// ����. ����� �Ѿ�� id�� pw�� ��ġ�ϴ� �����
		// id, pw, nick, phone ���� �ܼ�â�� ����Ͻÿ�
		request.setCharacterEncoding("EUC-KR");
		String input_id = request.getParameter("id");
		String input_pw = request.getParameter("pw");
		
		MemberDTO info = null;

		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;

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

		String sql = "SELECT * FROM MEMBER WHERE ID =  ?  AND PW = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, input_id);
		psmt.setString(2, input_pw);
		rs = psmt.executeQuery();

		// �÷������� �� �� ���
		ResultSetMetaData md = rs.getMetaData();
		int c = md.getColumnCount();

		if (rs.next()) {
			
			// �α����� �������� ��
			
			String id = rs.getString("ID");
			String pw = rs.getString("PW");
			String nick = rs.getString("NICK");
			String phone = rs.getString("PHONE");

			info = new MemberDTO(id, pw, nick, phone);
		}

		if (rs != null) {
			rs.close();
		}
		if (psmt != null) {
			psmt.close();
		}

		if (conn != null) {
			conn.close();
			System.out.println("���� ����");
		}
		
		// �α��� ���� ���� ����
		
		if (info == null){
			// �α��� ����
			response.sendRedirect("Login.jsp");
		}else{
			// �α��� ����
			session.setAttribute("info", info);
			response.sendRedirect("loginSuccess.jsp");
		}
		
	%>

</body>
</html>