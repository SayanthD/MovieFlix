/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import com.movieflix.utils.JDBCUtils;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class RegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String REGISTER_CMD = "insert into movieflix.users(username, userEmail, userPassword, firstName) values(?,?,?,?)";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String username = request.getParameter("username");
        String firstName = request.getParameter("fullName");
        String userEmail = request.getParameter("email");
        String userPassword = request.getParameter("password");

        try {
            Connection connection = JDBCUtils.getConnection();

            PreparedStatement smt = connection.prepareStatement(REGISTER_CMD);

            // Set Parameters
            smt.setString(1, username);
            smt.setString(2, userEmail);
            smt.setString(3, userPassword);
            smt.setString(4, firstName);

            // Execute SQL query
            Integer res = smt.executeUpdate();

            if (res > 0) {
                RequestDispatcher view = request.getRequestDispatcher("./index");
                view.forward(request, response);

            } else {
                request.setAttribute("status", "failed");
                request.setAttribute("msg", "Something went wrong, try again");
                RequestDispatcher view = request.getRequestDispatcher("./register.jsp");
                view.forward(request, response);
            }
        } catch (SQLException se) {
            System.out.print("err: " + se);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
