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
	// 문제 1. 입력한 id, pw, nick, phone 정보를 콘솔창에 출력하시오
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	String phone = request.getParameter("phone");
	//	System.out.println(id);
	//	System.out.println(pw);
	//	System.out.println(nick);
	//	System.out.println(phone);

	/*  JDBC  // 문제. 해당 회원정보를 member 테이블에 넣어주세요
	joinService < 통로 connection : driver > DataBase

	0. 해당 driver 파일 넣기 (ojdbc6) - 찾아서 복붙하면 됨
	1. driver 동적 로딩


	2. connection 연결


	3. joinService 에서 SQL 작성 및 실행


	4. 연결 종료

	*/


	Connection conn = null;
	PreparedStatement psmt = null;

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

	String sql = "INSERT INTO MEMBER VALUES (?,?,?,?)";
	psmt = conn.prepareStatement(sql); // connection  을 통해서 sql 문장 검열
	psmt.setString(1, id);
	psmt.setString(2, pw);
	psmt.setString(3, nick);
	psmt.setString(4, phone);
	psmt.executeUpdate();
	
	
	int cnt = psmt.executeUpdate();
	
	System.out.println("회원 정보 삽입 성공");

	if (psmt != null) {
		psmt.close();
	}

	if (conn != null) {
		conn.close();
		System.out.println("연결 종료");
	}
	if(cnt > 0){
		System.out.println("회원가입 성공");
		response.sendRedirect("main.jsp");
	}else{
		System.out.println("회원가입 실패");
		response.sendRedirect("Join.jsp");
	}
	
	%>

</body>
</html>