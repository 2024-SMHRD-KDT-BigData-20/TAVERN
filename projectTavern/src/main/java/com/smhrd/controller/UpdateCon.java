package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[UpdateCon]");

		// 0. POST 방식으로 전송된 데이터의 한글 처리
		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");

		// 세션에서 로그인 정보 가져오기
		HttpSession session = request.getSession();
		MemberVO loginMember = (MemberVO) session.getAttribute("loginMember");

		if (loginMember == null) {
			// 로그인되지 않은 경우 처리
			response.sendRedirect("login.jsp");
			return;
		}

		// 세션에서 가져온 아이디 정보
		String id = loginMember.getId();

		// 2. MemberVO에 정보를 담아서 묶기
		MemberVO update = new MemberVO(id, pw, null, null, nick, null, null);

		// 3. DAO 객체 생성 및 메소드 호출
		MemberDAO dao = new MemberDAO();
		int cnt = dao.updateMember(update);

		// 4. 결과에 따른 처리
		if (cnt > 0) {
			// 회원 정보 수정 성공 시
			// 수정된 정보를 다시 세션에 저장
			session.setAttribute("loginMember", update);
			response.sendRedirect("main.jsp");
		} else {
			// 회원 정보 수정 실패 시
			response.sendRedirect("update.jsp");
		}
	}
}
