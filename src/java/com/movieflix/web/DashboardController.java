/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import com.movieflix.dao.ItemsDao;
import com.movieflix.dao.ReviewDao;
import com.movieflix.dao.UsersDao;
import com.movieflix.dao.impl.ItemsDaoImpl;
import com.movieflix.dao.impl.ReviewDaoImpl;
import com.movieflix.dao.impl.UsersDaoImpl;
import com.movieflix.model.Items;
import com.movieflix.model.Users;
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
public class DashboardController extends HttpServlet {
    
    private UsersDao userItem;
    private ItemsDao itemsDAO;
    private ReviewDao reviewDAO;

    @Override
    public void init() {
        userItem = new UsersDaoImpl();
        itemsDAO = new ItemsDaoImpl();
        reviewDAO = new ReviewDaoImpl();
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
    // private static final String SELECT_ITEMS = "select itemId, movieTitle, movieRating from movieflix.items";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Users> userInfo = userItem.listUsersDashboard();
        List<Items> listItems = itemsDAO.listItemsforDashboard();
        List<Review> listReviews = reviewDAO.listReviewsforDashboard();
        request.setAttribute("userInfo", userInfo);
        request.setAttribute("listItems", listItems);
        request.setAttribute("listReviews", listReviews);
        
        RequestDispatcher view = request.getRequestDispatcher("./dashboard.jsp");
        view.forward(request, response);
        
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
