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
		
		// 세션을 얻어옵니다.
        HttpSession session = request.getSession();
        
        // 세션에 저장된 회원 아이디를 가져옵니다.
        String id = (String) session.getAttribute("id");

        // 여기서 회원 탈퇴 로직을 수행합니다.
        // 예를 들어, 데이터베이스에서 해당 사용자 정보를 삭제하는 등의 작업을 수행합니다.

        // 세션을 무효화하여 로그아웃 처리합니다.
        session.invalidate();

        // 회원 탈퇴가 완료되었음을 알리는 페이지로 이동합니다.
        response.sendRedirect("main.jsp");
    	}

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // GET 요청이 아닌 경우에도 같은 로직을 수행하도록 설정합니다.
	        doGet(request, response);
		
		
		
	}

}
