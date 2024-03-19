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
		

		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO findp = dao.findIdById(id);
		
		


		if(findp!=null) {
			HttpSession session = request.getSession();
            session.setAttribute("findp", findp.getPw());
			
            
		
		}
		response.sendRedirect("find_pw.jsp");
}
}

