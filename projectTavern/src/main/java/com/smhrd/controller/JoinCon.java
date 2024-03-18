package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		String birth_date = request.getParameter("birth_date");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");

		// 2. 묶어주기
		MemberVO joinMember = new MemberVO(email, pw, name, nick, birth_date, gender, email);

		System.out.println(joinMember.toString());

		// 3.
		MemberDAO dao = new MemberDAO();
		// 4-3. insertMember 메소드 호출
		int cnt = dao.insertMember(joinMember);

		// 5. 명령 후 처리
		// 회원가입 성공(cnt>0) => joinSuccess.jsp
		// 회원가입 실패 => main.jspㄴ
		if (cnt > 0) {
			// 성공
			// 회원가입 축하드립니다~ 000님 --> email 정보 보내기
			// request에 담아서 forward방식 이동
			// /MessageSystem/src/main/webapp/join
			RequestDispatcher rd = request.getRequestDispatcher("joinSuccess.jsp");
			request.setAttribute("joinEmail", email);
			rd.forward(request, response);

		} else {
			// 실패
			System.out.println("회원가입 실패");
			response.sendRedirect("Main.jsp");
		}

	}

}