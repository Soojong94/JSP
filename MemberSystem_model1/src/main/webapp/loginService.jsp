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
	// 문제. 여기로 넘어온 id와 pw가 일치하는 사람의
		// id, pw, nick, phone 값을 콘솔창에 출력하시오
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
			System.out.println("Connection 연결 성공");
		} else {
			System.out.println("Connection 연결 실패");
		}

		String sql = "SELECT * FROM MEMBER WHERE ID =  ?  AND PW = ?";
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, input_id);
		psmt.setString(2, input_pw);
		rs = psmt.executeQuery();

		// 컬럼개수를 모를 때 사용
		ResultSetMetaData md = rs.getMetaData();
		int c = md.getColumnCount();

		if (rs.next()) {
			
			// 로그인이 성공했을 때
			
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
			System.out.println("연결 종료");
		}
		
		// 로그인 성공 실패 여부
		
		if (info == null){
			// 로그인 실패
			response.sendRedirect("Login.jsp");
		}else{
			// 로그인 성공
			session.setAttribute("info", info);
			response.sendRedirect("loginSuccess.jsp");
		}
		
	%>

</body>
</html>