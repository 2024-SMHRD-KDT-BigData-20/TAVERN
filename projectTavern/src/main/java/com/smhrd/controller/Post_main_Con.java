package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.PostDAO;
import com.smhrd.model.PostVO;


public class Post_main_Con extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("[Post_main_Con]");
        // 요청에서 카테고리 파라미터 가져오기
        String post_category = request.getParameter("post_category");
        
        // DAO를 통해 해당 카테고리에 해당하는 게시글 가져오기
        PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.getPostsByCategory(post_category);
        System.out.println(post_category + " 리스트: " + postList);
        
        // 가져온 게시글 목록을 JSP 페이지로 전달
        request.setAttribute("postList", postList);
        
        // JSP로 포워딩
        request.getRequestDispatcher("post_main.jsp").forward(request, response);
    }
}