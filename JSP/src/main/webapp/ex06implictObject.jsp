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
	내장 객체 : JSP 안에서 객체를 생성하지 않고도 사용할 수 있는 객체
 --%>
 
 <table border = "1px">
 	<tr>
	 	<% // for 문을 활용하여 td태그 만들기
 			for (int i = 1; i <= 5 ; i++ ){
 				
 				// 내장객체 out 활용하기
 				out.print ("<td>" + i + "</td>");
 				
 			}
	 	
	 	
 		%>
 	</tr>
 </table>


</body>
</html>