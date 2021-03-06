package com.controller.admin;

import com.service.AnnouncementService;
import com.service.NewsService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*
该Servlet用于转发到Admin界面
 */
@WebServlet("/admin/welcome")
public class WelcomeServlet extends HttpServlet {
    private NewsService newsService = ServiceFactory.getNewsService();
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/admin_jsp/welcome.jsp").forward(request,response);
    }
}
