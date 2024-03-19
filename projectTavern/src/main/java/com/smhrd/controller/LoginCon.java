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

@WebServlet("/LoginCon") // 이 서블릿이 "/LoginCon" URL에 매핑됨을 나타냅니다.
public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); // 요청의 인코딩을 UTF-8로 설정합니다.

		// 아이디와 패스워드 파라미터를 받아옵니다.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 받아온 아이디와 패스워드를 MemberVO 객체로 묶어줍니다.
		MemberVO login = new MemberVO(id, pw);
		System.out.println(login.toString());

		// MemberDAO 객체를 생성합니다.
		MemberDAO dao = new MemberDAO();

		// 입력받은 아이디와 패스워드를 이용하여 로그인을 시도하고, 로그인한 멤버 정보를 가져옵니다.
		MemberVO loginMember = dao.selectMember(login);
		System.out.println(loginMember.toString());

		if (loginMember != null) { // 로그인에 성공했을 경우
			// 세션을 생성하고 로그인한 멤버 정보를 세션에 저장합니다.
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
		} else {
			// 로그인에 실패한 경우
			System.out.println("로그인 실패");
		}

		// 메인 페이지로 리다이렉트합니다.
		response.sendRedirect("main.jsp");
	}
}