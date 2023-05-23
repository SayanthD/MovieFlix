/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.movieflix.web;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import com.movieflix.utils.JDBCUtils;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author HP
 */
@MultipartConfig
public class AddItemController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ADD_ITEM = "insert into movieflix.items(movieTitle, coverImage, movieDescription, releaseYear, movieDuration, movieGenre, youtubeTrailer, movieCast, movieDirector) values(?,?,?,?,?,?,?,?,?)";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Part filePart = request.getPart("coverImg");
        String imageFileName = filePart.getSubmittedFileName();
        // String uploadPath = getServletContext().getRealPath("") + File.separator + "assets/img/covers/" + imageFileName;
      
        String uploadPath = "D:/MovieFlix/web/assets/img/covers/" + imageFileName;

        // String uploadPath = imageFileName;
        try (InputStream inputStream = filePart.getInputStream(); FileOutputStream fos = new FileOutputStream(uploadPath)) {

            byte[] buffer = new byte[1024];
            int bytesRead;
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                fos.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            System.out.print(e);
        }

        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String releaseYear = request.getParameter("releaseYear");
        String duration = request.getParameter("duration");
        String genre = request.getParameter("genre");
        String ytlink = request.getParameter("ytlink");
        String mcast = request.getParameter("movieCast");
        String mdirector = request.getParameter("movieDirector");

        try {
            Connection connection = JDBCUtils.getConnection();

            PreparedStatement smt = connection.prepareStatement(ADD_ITEM);

            // movieTitle, coverImage, movieDescription, releaseYear, movieDuration, movieGenre, youtubeTrailer, movieCast, movieDirector
            smt.setString(1, title);
            smt.setString(2, imageFileName);
            smt.setString(3, description);
            smt.setString(4, releaseYear);
            smt.setString(5, duration);
            smt.setString(6, genre);
            smt.setString(7, ytlink);
            smt.setString(8, mcast);
            smt.setString(9, mdirector);

            // Execute SQL query      
            Integer res = smt.executeUpdate();
            if (res > 0) {
                request.setAttribute("status", "success");
                request.setAttribute("msg", "Added item successfully");
            } else {
                request.setAttribute("status", "failed");
                request.setAttribute("msg", "Something went wrong, try again");
            }

            RequestDispatcher view = request.getRequestDispatcher("./add-item.jsp");
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
