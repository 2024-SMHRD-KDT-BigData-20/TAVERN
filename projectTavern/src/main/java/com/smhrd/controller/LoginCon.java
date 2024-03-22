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

public class LoginCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8"); // 요청의 인코딩을 UTF-8로 설정합니다.

		// 아이디와 패스워드 파라미터를 받아옵니다.
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		// 받아온 아이디와 패스워드를 MemberVO 객체로 묶어줍니다.
		MemberVO login = new MemberVO(id, pw);

		// MemberDAO 객체를 생성합니다.
		MemberDAO dao = new MemberDAO();

		// 입력받은 아이디와 패스워드를 이용하여 로그인을 시도하고, 로그인한 멤버 정보를 가져옵니다.
		MemberVO loginMember = dao.selectMember(login);
		
		if (loginMember != null) { // 로그인에 성공했을 경우
			// 세션을 생성하고 로그인한 멤버 정보를 세션에 저장합니다.
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
			// 이전 페이지의 URL 가져오기
			String redirectURL = request.getParameter("redirectURL");
			if (redirectURL != null && !redirectURL.isEmpty()) {
				// 이전 페이지로 리다이렉트
				response.sendRedirect(redirectURL);
			} else {
				// 이전 페이지가 없을 경우 기본값으로 main.jsp로 이동
				response.sendRedirect("main.jsp");
			}
		} else {
			// 실패
			// 실패 메시지를 request에 설정
			request.setAttribute("message", "로그인에 실패했습니다. 아이디 또는 비밀번호를 확인해주세요.");
			request.getRequestDispatcher("main.jsp").forward(request, response);
			
			String redirectURL = request.getParameter("redirectURL");
			if (redirectURL != null && !redirectURL.isEmpty()) {
				// 이전 페이지로 리다이렉트
				response.sendRedirect(redirectURL);
			} else {
				// 이전 페이지가 없을 경우 기본값으로 main.jsp로 이동
				response.sendRedirect("main.jsp");
			}
		}
	}
}