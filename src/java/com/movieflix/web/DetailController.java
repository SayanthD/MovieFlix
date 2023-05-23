/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import com.movieflix.dao.CommentDao;
import com.movieflix.dao.DetailDao;
import com.movieflix.dao.ReviewDao;
import com.movieflix.dao.impl.CommentDaoImpl;
import com.movieflix.dao.impl.ReviewDaoImpl;
import com.movieflix.model.Items;
import com.movieflix.dao.impl.DetailDaoImpl;
import com.movieflix.model.Comment;
import com.movieflix.model.Review;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class DetailController extends HttpServlet {
    
    private DetailDao detailDAO;
    private ReviewDao reviewDAO;
    private CommentDao commentDAO;

    @Override
    public void init() {
        detailDAO = new DetailDaoImpl();
        reviewDAO = new ReviewDaoImpl();
        commentDAO = new CommentDaoImpl();
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String itemId = request.getParameter("itemId");    
        List<Items> listDetail = detailDAO.showItemDetails(itemId);
        List<Review> listReview = reviewDAO.listDetailReviews(itemId);
        List<Comment> listComment = commentDAO.listDetailComment(itemId);
        request.setAttribute("listDetail", listDetail);
        request.setAttribute("listReview", listReview);
        request.setAttribute("listComment", listComment);
        RequestDispatcher view = request.getRequestDispatcher("./details.jsp");
        view.include(request, response);
            
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
