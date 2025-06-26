package com.example.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Set some attributes to display in JSP
        request.setAttribute("message", "Welcome to our Simple JSP Application!");
        request.setAttribute("currentTime", 
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        request.setAttribute("userAgent", request.getHeader("User-Agent"));
        
        // Forward to JSP page
        request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String userName = request.getParameter("userName");
        if (userName != null && !userName.trim().isEmpty()) {
            request.setAttribute("message", "Hello, " + userName + "!");
        } else {
            request.setAttribute("message", "Please enter your name!");
        }
        
        request.setAttribute("currentTime", 
            LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
        request.setAttribute("userAgent", request.getHeader("User-Agent"));
        
        request.getRequestDispatcher("/WEB-INF/views/home.jsp").forward(request, response);
    }
}