/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.model;

/**
 *
 * @author HP
 */
public class Review {
    private Integer reviewId;
    private Integer userId;
    private Integer itemId;
    private String reviewTitle;
    private String reviewText;
    private String rating;
    
    public Review() {
    }
    
    public Review(Integer reviewId, Integer userId, Integer itemId, String reviewTitle, String reviewText, String rating) {
        super();
        this.reviewId = reviewId;
        this.userId = userId;
        this.itemId = itemId;
        this.reviewTitle = reviewTitle;
        this.reviewText = reviewText;
        this.rating = rating;
    }
    
    public Review(Integer reviewId, Integer userId, Integer itemId, String rating) {
        super();
        this.reviewId = reviewId;
        this.userId = userId;
        this.itemId = itemId;
        this.rating = rating;
    }
    
    public Integer getreviewId() {
        return reviewId;
    }

    public void setreviewId(Integer reviewId) {
        this.reviewId = reviewId;
    }
    
    public Integer getuserId() {
        return userId;
    }

    public void setuserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getitemId() {
        return itemId;
    }

    public void setitemId(Integer itemId) {
        this.itemId = itemId;
    }

    public String getreviewTitle() {
        return reviewTitle;
    }

    public void setreviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    public String getreviewText() {
        return reviewText;
    }

    public void setreviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public String getrating() {
        return rating;
    }

    public void setstatus(String rating) {
        this.rating = rating;
    }
}
