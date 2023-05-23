/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import com.movieflix.utils.JDBCUtils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String LOGIN_CMD = "select * from movieflix.users where userEmail = ? and userPassword = ?";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Connection connection = JDBCUtils.getConnection();

            PreparedStatement smt = connection.prepareStatement(LOGIN_CMD);

            // Set Parameters
            smt.setString(1, email);
            smt.setString(2, password);

            ResultSet res = smt.executeQuery();
            // connection.close();

            String _email = "NULL";
            String _pwd = "NULL";
            String _role = "NULL";

            while (res.next()) {
                _email = res.getString("userEmail");
                _pwd = res.getString("userPassword");
                _role = res.getString("userRole");
            }
            res.close();

            System.out.print(_email);
            if (_email.equals(email) && _pwd.equals(password)) {
                if (_role.equals("admin")) {
                 RequestDispatcher view = request.getRequestDispatcher("./dashboard");
                 view.forward(request, response);
                }
                else {
                RequestDispatcher view = request.getRequestDispatcher("./index");
                view.forward(request, response);
                }

            } else {
                request.setAttribute("status", "failed");
                request.setAttribute("msg", "Incorrect email or password, try again");
                RequestDispatcher view = request.getRequestDispatcher("./login.jsp");
                view.forward(request, response);
            }

        } catch (SQLException se) {
            System.out.println(se);
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
