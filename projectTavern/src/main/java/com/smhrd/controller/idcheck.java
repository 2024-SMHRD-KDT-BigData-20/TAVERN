package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class idcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
        
        MemberDAO dao = new MemberDAO();
        MemberVO member = dao.findIdById(userid);
        
        response.setContentType("text/html; charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        if (member != null) {
            out.println(userid + "는 이미 사용 중인 아이디입니다.");
        } else {
            out.println(userid + "는 사용 가능한 아이디입니다.");
        }
	}

}
