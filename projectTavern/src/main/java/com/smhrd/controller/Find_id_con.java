package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;


public class Find_id_con extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MemberDAO dao = new MemberDAO();

		String email = request.getParameter("email");

		String id = dao.find_id(email);

		request.setAttribute("id", id);

		if (id == null)

			return "login.jsp";

		return "login/findIdAfter.jsp";
		
		
	
	}

}
