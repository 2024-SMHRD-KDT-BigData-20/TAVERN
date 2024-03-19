package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberVO;

public class idcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 파라미터 수집
		String id = request.getParameter("id");

		// 2. DAO를 통해 아이디 유효성 검사 메서드 호출
		MemberDAO dao = new MemberDAO();
		List<MemberVO> idcheck = dao.checkID(id);

		// 3. JSON 형태로 결과 반환
		Gson gson = new Gson();
		String res = gson.toJson(idcheck);

		// 결과를 클라이언트에게 전송
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();

		if (idcheck != null) {
			out.print(res);
		} else {
			System.out.println("검색 실패");
		}
	}
}