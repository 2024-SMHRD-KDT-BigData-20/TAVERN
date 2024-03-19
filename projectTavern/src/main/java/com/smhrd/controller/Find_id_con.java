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

public class Find_id_con extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		
		
		MemberDAO dao = new MemberDAO();
		MemberVO findi = dao.findIdByEmail(email);
		
		
//		String cnt = dao.findid(email);

		if(findi!=null) {
			HttpSession session = request.getSession();
            session.setAttribute("findi", findi.getId());
			
            
		
		}
		response.sendRedirect("find_id.jsp");
}
}

