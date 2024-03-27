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

		HttpSession session = request.getSession();
		String liqName = ((List<LiquorVO>) session.getAttribute("whiskeyList")).get(0).getLiq_name(); // 여기서는 첫 번째 술을
																										// 가져왔습니다.

		// 술 이름을 기반으로 상세 정보 조회
		LiquorDAO liquorDAO = new LiquorDAO();
		LiquorVO liquor = liquorDAO.getLiquorDetails(liqName);
		System.out.println(liquor.toString());

		// 조회한 술 정보를 세션에 저장
		session.setAttribute("liquorDetails", liquor);

		// 상세 페이지로 리다이렉트
		response.sendRedirect("liquor_list_1.jsp");
	}
}