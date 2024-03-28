package com.smhrd.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;


public class Post_in_Con extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        // 세션에서 사용자의 id를 가져옵니다.
        HttpSession session = request.getSession(false); // 새로운 세션이 생성되지 않도록 false로 설정
        if (session == null || session.getAttribute("loginMember") == null) {
            // 로그인되어 있지 않은 경우 처리
            response.sendRedirect("login.jsp"); // 로그인 페이지로 리다이렉트
            return;
        }
        String id = ((MemberVO)session.getAttribute("loginMember")).getId();

        // 현재 시간을 생성일시로 설정
        Date createdAt = new Date(System.currentTimeMillis());

        // 1. 파라미터 수집
        String post_title = request.getParameter("title");
        String post_content = request.getParameter("content");
        String post_category = request.getParameter("category");

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
        postin.setID(id); // 세션에서 가져온 id 값으로 설정
        postin.setPOST_CATEGORY(post_category);
        postin.setCREATED_AT(createdAt); // 생성일시 설정

        // 4. PostDAO 객체 생성 및 게시글 작성 시도
        PostDAO postDAO = new PostDAO();
        int result = postDAO.insertpost(postin);

        if (result > 0) {
            // 성공 시 post_main.jsp로 이동
            response.sendRedirect("post_review.jsp");
        } else {
            // 실패 시 알림창 출력 후 이전 페이지로 이동
            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().println("<script>alert('글 작성을 할 수 없습니다.'); history.back();</script>");
        }
    }
}