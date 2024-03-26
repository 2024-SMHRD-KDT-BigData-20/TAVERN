package com.smhrd.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.smhrd.model.LiquorDAO;
import com.smhrd.model.LiquorVO;
import com.smhrd.model.MemberVO;

// 서블릿 매핑

public class DetailCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[DetailCon]");
		// 술 이름을 가져오기 위한 DAO 객체 생성
		LiquorDAO liquorDAO = new LiquorDAO();
		// 술 이름 목록 가져오기 (여기서는 위스키만 가져오도록 했습니다)
		HttpSession session = request.getSession();
		List<LiquorVO> whiskeyList = liquorDAO.getWhiskeyList();

		// 세션에 술 이름 목록을 저장
		if (whiskeyList != null && !whiskeyList.isEmpty()) {
		    session.setAttribute("whiskeyList", whiskeyList);
		}
		// 상세 정보 페이지로 리다이렉트
		response.sendRedirect("liquor_list_1.jsp");
	}
}