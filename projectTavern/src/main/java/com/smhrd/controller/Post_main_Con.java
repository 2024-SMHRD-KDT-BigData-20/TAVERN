package com.smhrd.controller;

import java.io.IOException;
import java.util.Arrays;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청에서 카테고리 파라미터 배열 가져오기
		String[] post_categories = request.getParameterValues("post_category");

		// 배열이 null이 아니고 비어있지 않은 경우에만 처리
		if (post_categories != null && post_categories.length > 0) {
			System.out.println("post_categories: " + Arrays.toString(post_categories)); // 콘솔 로그 추가

			// DAO를 통해 해당 카테고리에 해당하는 게시글 가져오기
			PostDAO postDAO = new PostDAO();
			List<PostVO> postList = postDAO.getPostsByCategories(Arrays.asList(post_categories));
			System.out.println("게시글 리스트: " + postList);

			// 가져온 게시글 목록을 JSP 페이지로 전달
			request.setAttribute("postList", postList);
		} else {
			System.out.println("post_category 매개변수가 전달되지 않았거나 비어 있습니다.");
		}

		// JSP로 포워딩
		request.getRequestDispatcher("post_main.jsp").forward(request, response);
	}
}
