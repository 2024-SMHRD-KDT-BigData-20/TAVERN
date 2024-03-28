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

@WebServlet("/LiquorCon") // 이 서블릿이 "/LiquorCon" URL에 매핑됨
public class LiquorCon extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("[LiquorCon]"); // 콘솔에 로그를 출력

        // 클라이언트로부터 전달된 요청 파라미터 중 'liq_type'을 가져옴
        String liq_type = request.getParameter("liq_type");

        // LiquorDAO 객체 생성
        LiquorDAO liquorDAO = new LiquorDAO();

        // liq_type을 이용하여 LiquorDAO에서 해당하는 술의 정보를 가져옴
        List<LiquorVO> liquorList = liquorDAO.liqName(liq_type);

        // 콘솔에 liq_type과 해당하는 술 리스트 출력
        System.out.println(liq_type + " 리스트: " + liquorList);

        // 만약 가져온 술 리스트가 null이 아니면
        if (liquorList != null) {
            // 현재 세션을 가져옴
            HttpSession session = request.getSession();
            // 세션에 'liquorList'와 'liq_type' 속성을 설정하여 정보를 저장
            session.setAttribute("liquorList", liquorList);
            session.setAttribute("liq_type", liq_type);
        }

        // 클라이언트에게 'liquor_list.jsp' 페이지로 리다이렉션 요청
        response.sendRedirect("liquor_list.jsp");
    }
}
