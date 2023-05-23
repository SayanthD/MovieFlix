/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao.impl;

import com.movieflix.dao.ReviewDao;
import com.movieflix.model.Review;
import com.movieflix.model.Users;
import com.movieflix.utils.JDBCUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author HP
 */
public class ReviewDaoImpl implements ReviewDao {
    
    private static final String SELECT_ITEM_REVIEWS = "select * from movieflix.reviews where itemId = ?";
    private static final String SELECT_DASHBOARD_REVIEWS = "select * from movieflix.reviews";
    
    public ReviewDaoImpl() {
    }

    @Override
    public List<Review> listDetailReviews(String Id) {
        List<Review> review = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement smt = connection.prepareStatement(SELECT_ITEM_REVIEWS);
            
            // Set Parameters
            smt.setString(1, Id);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                Integer reviewId = rs.getInt("reviewId");
                Integer userId = rs.getInt("userId");
                Integer itemId = rs.getInt("itemId");
                String reviewTitle = rs.getString("reviewTitle");
                String reviewText = rs.getString("reviewText");
                String rating = rs.getString("rating");

                review.add(new Review(reviewId, userId, itemId, reviewTitle, reviewText, rating));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return review;
    }
    
    @Override
    public List<Review> listReviewsforDashboard() {
        List<Review> dashboardreview = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement smt = connection.prepareStatement(SELECT_DASHBOARD_REVIEWS);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                Integer reviewId = rs.getInt("reviewId");
                Integer userId = rs.getInt("userId");
                Integer itemId = rs.getInt("itemId");
                String rating = rs.getString("rating");

                dashboardreview.add(new Review(reviewId, userId, itemId, rating));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return dashboardreview;
    }
}
