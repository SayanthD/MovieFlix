/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao;

import com.movieflix.model.Review;
import java.util.List;

/**
 *
 * @author HP
 */
public interface ReviewDao {
    List<Review> listDetailReviews(String itemId);
    List<Review> listReviewsforDashboard();
}
