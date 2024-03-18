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
		String birthdate = request.getParameter("birthdate");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");

		// 2. 묶어주기
		MemberVO joinMember = new MemberVO(id, pw, name, nick, birthdate, gender, email);

		System.out.println(joinMember.toString());

		// 3.
		MemberDAO dao = new MemberDAO();

		// 4.
		int cnt = dao.insertMember(joinMember);

		// 5. 명령 후 처리
		if (cnt > 0) {
			RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
			request.setAttribute("joinnick", nick);
			rd.forward(request, response);

		} else {
			System.out.println("회원가입 실패");
			response.sendRedirect("main.jsp");
		}

	}

}