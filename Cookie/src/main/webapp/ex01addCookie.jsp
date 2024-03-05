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

	Cookie
		- Client의 정보를 지속적으로 유지하기 위함
		
		특징
		저장위치 : Client 의 웹 브라우저(Client PC)
		저장형식 : text (String)
		보안 : Session에 비해 상대적으로 약함
		용량제한 : 도메인 하나당 20개, 쿠키하나 최대크기 4kb, 총 300개 -> 1.2 MB
		
		총정리 : Client 의 정보를 저장하긴 해야하지만 상대적으로
		보안에 중요하지 않은 부분은 쿠키에 저장
		(예 : 장바구니목록, 웹에 접속한 시간)

 --%>
 
 
 <%
 
 	// 1. 쿠키생성 - new Cookie("name", "value");
 	
 	Cookie cookie1 = new Cookie("food" , "apple");
 	Cookie cookie2 = new Cookie("member" , "pbk");
 	
 	// 2. 쿠키의 나이 설정 
 	cookie1.setMaxAge(6000); // 6000초
 	
 	
 	// 3. 쿠키를 client  에게 보내기 / localhost : 발행자 / 기본 1년 설정
	response.addCookie(cookie1); 	
	response.addCookie(cookie2); 	
 	
 
 %>
 
 

</body>
</html>