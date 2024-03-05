package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ex04AddPhoneList
 */
@WebServlet("/ex04AddPhoneList")
public class ex04AddPhoneList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 회원들의 연락처를 Session 에 저장후 ex04list.jsp로 이동
		
		// 연락처에 들어가는 정보(이름, 나이, 번호, 주소)
		
		MemberDTO m1 = new MemberDTO("김현빈", 1499, "001", "서울");
		MemberDTO m2 = new MemberDTO("강민재", 1599, "002", "대구");
		MemberDTO m3 = new MemberDTO("이균호", 1699, "003", "대전");
		MemberDTO m4 = new MemberDTO("강민지", 1799, "004", "부산");
		
		ArrayList<MemberDTO> list = new ArrayList<>();
		
		list.add(m1);
		list.add(m2);
		list.add(m3);
		list.add(m4);
		
		
		// Servlet 에서 session 을 사용하는 방법
		// 세션 생성
		HttpSession session = request.getSession();
		session.setAttribute("list", list);
		
		// ex04list.jsp 페이지로 이동하기
		response.sendRedirect("ex04list.jsp");
		
		
	}

}
