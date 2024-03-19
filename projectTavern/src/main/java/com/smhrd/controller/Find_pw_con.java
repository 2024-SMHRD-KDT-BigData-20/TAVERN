package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class Find_pw_con extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[Find_pw_con]");

		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");

		try {
		    // 모델 호출
		    MemberDAO dao = new MemberDAO();
		    String pw = dao.findPassword(id);

		    if (pw != null) {
		        // 결과를 request 속성에 저장
		        request.setAttribute("id", id);
		        request.setAttribute("pw", pw);
		    } else {
		        // 비밀번호를 찾지 못한 경우에 대한 처리
		        request.setAttribute("errorMessage", "비밀번호를 찾을 수 없습니다.");
		    }
		} catch (Exception e) {
		    // 예외 처리
		    request.setAttribute("errorMessage", "오류가 발생했습니다: " + e.getMessage());
		}

		// 결과를 보여줄 뷰로 포워딩
		request.getRequestDispatcher("/find_pw.jsp").forward(request, response);
	}
}