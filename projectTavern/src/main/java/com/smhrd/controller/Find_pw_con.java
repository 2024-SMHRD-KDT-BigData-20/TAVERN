package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;

public class Find_pw_con extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDAO dao = new MemberDAO();

		String id = request.getParameter("id");

		String pw = dao.pwsearch(id);

		request.setAttribute("pw", pw);
	
		if (pw != null) {
            RequestDispatcher rd = request.getRequestDispatcher("find_pw.jsp");
            rd.forward(request, response);
        } else {
            // 비밀번호를 찾지 못했을 경우 login.jsp 페이지로 이동
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
		
		
	}
}