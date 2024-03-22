package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;


public class Check_id extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 // 클라이언트로부터 전달받은 아이디 파라미터를 읽어옵니다.
        String id = request.getParameter("id");
        
        // DAO 객체 생성
        MemberDAO memberDAO = new MemberDAO();
        
        // DAO를 사용하여 중복 확인 메서드 호출
        boolean isDuplicate = memberDAO.checkid(id);
        
        // 응답으로 중복 여부를 전송합니다.
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        if (isDuplicate) {
            response.getWriter().write("ID중복입니다.");
            
        } else {
            response.getWriter().write("ID사용가능합니다.");
        }
		
	}

}
