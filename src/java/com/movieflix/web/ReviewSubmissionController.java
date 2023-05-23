/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import com.movieflix.utils.JDBCUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
public class ReviewSubmissionController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ADD_REVIEW = "insert into movieflix.reviews(userId, itemId, reviewTitle, reviewText, rating) values(?,?,?,?,?)";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // String userId = request.getParameter("userId");
        String itemId = request.getParameter("itemId");
        String reviewTitle = request.getParameter("reviewTitle");
        String reviewText = request.getParameter("reviewText");
        // String rating = request.getParameter("rating");

        try {
            Connection connection = JDBCUtils.getConnection();

            PreparedStatement smt = connection.prepareStatement(ADD_REVIEW);

            smt.setString(1, "0");
            smt.setString(2, itemId);
            smt.setString(3, reviewTitle);
            smt.setString(4, reviewText);
            smt.setString(5, "10.0");

            Integer res = smt.executeUpdate();
            
            System.out.print(res);

            if (res > 0) {
                request.setAttribute("status", "success");
                request.setAttribute("msg", "Added review successfully");
            } else {
                request.setAttribute("status", "failed");
                request.setAttribute("msg", "Something went wrong, try again");
            }
            RequestDispatcher view = request.getRequestDispatcher("./detail");
            view.forward(request, response);
            
        } catch (SQLException se) {
            System.out.print(se);
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
