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

// 서블릿 매핑

public class DetailCon extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("[DetailCon]");
        // 요청 시 liq_type 파라미터 받기
    	String liq_name = request.getParameter("liq_name");

        // DAO 인스턴스 생성
        LiquorDAO liquorDAO = new LiquorDAO();
        
        // 상세 정보 조회
        List<LiquorVO> liquorDetails = liquorDAO.liqAll(liq_name);
        System.out.println("디테일"+liquorDetails);
        // 세션에 상세 정보 저장
        if (liquorDetails != null && !liquorDetails.isEmpty()) {
            HttpSession session = request.getSession();
            session.setAttribute("liquorDetails", liquorDetails);
        }
        // 상세 정보 페이지로 리다이렉트
        response.sendRedirect("liquor_list_1.jsp");
    }
}