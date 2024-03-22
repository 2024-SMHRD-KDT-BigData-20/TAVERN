package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        session.removeAttribute("loginMember");
        
        // 이전 페이지의 URL 가져오기
        String redirectURL = request.getParameter("redirectURL");
        if (redirectURL != null && !redirectURL.isEmpty()) {
            // 이전 페이지로 리다이렉트
            response.sendRedirect(redirectURL);
        } else {
            // 이전 페이지가 없을 경우 기본값으로 main.jsp로 이동
            response.sendRedirect("main.jsp");
        }
    }
}