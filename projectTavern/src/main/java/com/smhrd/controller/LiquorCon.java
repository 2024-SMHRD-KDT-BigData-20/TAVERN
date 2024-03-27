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


public class LiquorCon extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("[LiquorCon]");
        String liq_type = request.getParameter("liq_type"); // request 파라미터로부터 liq_type 전달 받음

        // 술 이름을 가져오기 위한 DAO 객체 생성
        LiquorDAO liquorDAO = new LiquorDAO();
        // 술 이름 목록 가져오기 (liq_type에 따라 다른 술의 목록을 가져오도록 함)
        List<LiquorVO> liquorList = liquorDAO.liqName(liq_type);
        System.out.println(liq_type + " 리스트: " + liquorList);
        // 세션에 술 이름 목록을 저장
        if (liquorList != null) {
            HttpSession session = request.getSession();
            session.setAttribute("liquorList", liquorList);
            session.setAttribute("liq_type", liq_type);
        }
        // 리다이렉션: 새로운 URL로 클라이언트에게 이동 요청
        response.sendRedirect("liquor_list.jsp");
    }
}