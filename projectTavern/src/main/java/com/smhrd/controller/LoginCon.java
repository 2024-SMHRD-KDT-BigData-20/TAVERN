package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberVO login = new MemberVO(id, pw);

		MemberVO login_vo = new MemberDAO().selectMember(login);

		if (login_vo != null) {
			// 로그인 성공
			HttpSession session = request.getSession();
			session.setAttribute("login_vo", login_vo);
		}

		response.sendRedirect("Main.jsp");
	}

}
