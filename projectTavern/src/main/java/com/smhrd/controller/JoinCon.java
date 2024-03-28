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
		
		// 비어있을경우 경고창
		if (id == null || id.isEmpty()) {
            // ID가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('ID를 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        } else if (pw == null || pw.isEmpty()) {
        	// PW가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
        	response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('PW를 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        } else if (name == null || name.isEmpty()) {
        	// name가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
        	response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('이름을 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        } else if (nick == null || nick.isEmpty()) {
        	// nick가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
        	response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('닉네임을 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        } else if (birthdate == null || birthdate.isEmpty()) {
        	// birthdate가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
        	response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('생일을 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        } else if(email == null || email.isEmpty()) {
        	// email가 비어있을 경우 알림창 출력 후 이전 페이지로 이동
        	response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('Email를 입력해주세요.'); history.back();</script>");
            return; // 메서드 종료
        }

		// 2. 묶어주기
		MemberVO joinMember = new MemberVO(id, pw, name, nick, birthdate, gender, email);

		// 3.
		MemberDAO dao = new MemberDAO();

		// 4.
		int cnt = dao.insertMember(joinMember);

		// 5. 명령 후 처리
		// Redirect할 URI 설정
		String redirectURI = "main.jsp"; // 회원가입 성공 시 이동할 페이지 URI

		// 회원가입 성공 여부에 따라 Redirect 또는 실패 메시지 출력
		if (cnt > 0) {
		    RequestDispatcher rd = request.getRequestDispatcher(redirectURI);
		    request.setAttribute("joinnick", nick);
		    rd.forward(request, response);
		} else {
		    // 회원가입 실패 시 메시지 출력
		    System.out.println("회원가입 실패");
		    response.sendRedirect("main.jsp");
		}

	}

}