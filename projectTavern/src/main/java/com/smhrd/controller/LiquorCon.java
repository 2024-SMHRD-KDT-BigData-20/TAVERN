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

@WebServlet("/LiquorCon")
public class LiquorCon extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 술 이름을 가져오기 위한 DAO 객체 생성
        LiquorDAO liquorDAO = new LiquorDAO();
        // 술 이름 목록 가져오기 (여기서는 위스키만 가져오도록 했습니다)
        List<LiquorVO> whiskeyList = liquorDAO.liqName("위스키");

        // 세션에 술 이름 목록을 저장
        if (whiskeyList != null) {
        	HttpSession session = request.getSession();
        	session.setAttribute("whiskeyList", whiskeyList);
        }
        // 리다이렉션: 새로운 URL로 클라이언트에게 이동 요청
        response.sendRedirect("liquor_list.jsp");
    }
}