package com.controller;

import com.entity.Announcement;
import com.service.AnnouncementService;
import com.service.ServiceFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/listAnnouncementByAid")
public class listAnnouncementByAid extends HttpServlet {
    private AnnouncementService announcementService = ServiceFactory.getAnnouncementService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int Aid = Integer.parseInt(request.getParameter("Aid"));
        Announcement announcement = announcementService.listAnnouncementByNid(Aid);
        request.setAttribute("announcement",announcement);
        request.getRequestDispatcher("/jsp/Announcement/listAnnouncementByAid.jsp").forward(request,response);
    }

}
