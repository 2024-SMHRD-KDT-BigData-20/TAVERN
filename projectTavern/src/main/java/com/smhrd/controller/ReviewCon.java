package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.LiquorDAO;
import com.smhrd.model.LiquorVO;
import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;


public class ReviewCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("[ReviewCon]");
        String post_category = request.getParameter("post_category"); // request 파라미터로부터 post_category 전달 받음

        // 리뷰 게시판 글 목록 가져오기 위한 DAO 객체 생성
        PostDAO PostDAO = new PostDAO();
        // 리뷰 게시판 글 목록 가져오기 (post_category에 따라 다른 게시 글 목록을 가져오도록 함)
        List<PostVO> postList = PostDAO.postcate(post_category);
        System.out.println(post_category + " 리스트: " + postList);
        // 세션에 게시 글 목록을 저장
        if (postList != null) {
            HttpSession session = request.getSession();
            session.setAttribute("postList", postList);
            session.setAttribute("post_category", post_category);
        }
        // 리다이렉션: 새로운 URL로 클라이언트에게 이동 요청
        response.sendRedirect("post_review.jsp");
    }
	

}
