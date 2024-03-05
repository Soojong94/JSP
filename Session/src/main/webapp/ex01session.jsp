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
			- Client 의 정보를 지속적으로 유지하기 위한 방법
			
			특징. - Session 브라우저당 1개 발급이 된다
				  - 브라우저를 종료하는 순간 세션은 만료된다 
				  or 30분 이상 아무런 행동을 하지 않을 때(시간 조절 가능)
				  
			저장위치 : Server PC
			저장형식 : Object (모든 클래스의 부모) - 모든 형태로 저장가능
			보안 : Cookie 에 비해 상대적으로 강력함
			용량 제한 : Server PC의 저장소가 허용하는 한
			
			총 정리 : Client 의 정보 중 중요한 정보를 유지할 때 Session을 활용한다
			(예 : 로그인 정보, 계좌 정보)
				
	 --%>

<%
	// Session 에 아이디와 비밀번호를 저장 : session 은 내장객체
	// setAttribute("name" , "value");
	// String -> Object (UpCasting)
	session.setAttribute("id", "pbk");
	
	// Session 에 저장된 값 가져와서 확인하기
	// Object -> String(DownCasting)
	String id = (String)session.getAttribute("id");

	// Session 삭제하기
	session.removeAttribute("id"); //특정 name 만 없애는 방법
	session.invalidate(); // 전체를 삭제하는 방법
	
%>
<%=id %>
</body>
</html>