package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		// 1. 파라미터 수집(email,pw,tel,address)
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String tel = request.getParameter("");
		String address = request.getParameter("address");
	}

}
