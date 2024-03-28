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
		String post_title = request.getParameter("title");
		String post_content = request.getParameter("content");
		String id = request.getParameter("id");
		String post_category = request.getParameter("category");
	    // 나머지 파라미터(post_index, post_file, created_at, post_views, post_likes, id)는 자동으로 증가되는 값이거나 사용자 입력이 아니므로 수집하지 않음.

	    // 2. post_title이 비어있는지 확인
	    if (post_title == null || post_title.isEmpty()) {
	        // 제목이 비어있을 경우 알림창 출력 후 이전 페이지로 이동
	        response.setContentType("text/html; charset=UTF-8");
	        response.getWriter().println("<script>alert('제목을 입력해주세요.'); history.back();</script>");
	        return; // 메서드 종료
	    }

	    // 3. PostVO 객체 생성
	    PostVO postin = new PostVO();
	    postin.setPOST_TITLE(post_title);
	    postin.setPOST_CONTENT(post_content);
	    postin.setID(id);
	    postin.setPOST_CATEGORY(post_category);

	    // 4. PostDAO 객체 생성 및 게시글 작성 시도
	    PostDAO postDAO = new PostDAO();
	    int result = postDAO.insertpost(postin);

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
