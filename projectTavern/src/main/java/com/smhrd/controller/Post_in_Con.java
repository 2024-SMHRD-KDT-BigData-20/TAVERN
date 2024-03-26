package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;


public class Post_in_Con extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

        // 1. 파라미터 수집
		String post_index = request.getParameter("post_idx");
        String post_title = request.getParameter("post_title");
        String post_content = request.getParameter("post_content");
        String post_file = request.getParameter("post_file");
        String created_at = request.getParameter("created_at");
        String post_views = request.getParameter("post_views");
        String post_likes = request.getParameter("post_likes");
        String id = request.getParameter("id");

        // 2. 묶어주기
        PostVO insertpost = new PostVO(post_title, post_content);

        // 3. DAO 객체 생성 및 글 작성 시도
        PostDAO pdao = new PostDAO();
        int result = pdao.insertpost(insertpost);

        if (result > 0) {
            // 성공 시 post_main.jsp로 이동
            response.sendRedirect("post_main.jsp");
        } else {
            // 실패 시 알림창 출력 후 이전 페이지로 이동
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('글 작성을 할 수 없습니다.'); history.back();</script>");
        }
		
		
	}

}
