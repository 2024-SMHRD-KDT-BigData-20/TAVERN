package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;

public class DeleteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		// 1. DAO에 delete 메소드 만들기 -> 리턴타입 : 정수
		// 2. 리턴값이 0보다 크면 성공, 아니라면 실패
		// 3. 성공시에는 Main.jsp로 이동 / 실패시 Delete.jsp
		
		int cnt = new MemberDAO().delete(id);
		
		if(cnt > 0) {
			HttpSession session = request.getSession();
			session.removeAttribute("loginMember");
			response.sendRedirect("main.jsp");
		}else {
			HttpSession session = request.getSession();
			session.removeAttribute("loginMember");
			response.sendRedirect("main.jsp");
		}
		
		
		
	}

}
