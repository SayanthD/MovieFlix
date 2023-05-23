/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.model;

/**
 *
 * @author HP
 */
public class Comment {
    private Integer itemId;
    private String comment;
    
    public Comment() {
    }
    
    public Comment(Integer itemId, String comment) {
        super();
        this.itemId = itemId;
        this.comment = comment;
    }
    
    public Comment(String comment) {
        super();
        this.comment = comment;
    }
    
    public Integer getitemId() {
        return itemId;
    }

    public void setitemId(Integer itemId) {
        this.itemId = itemId;
    }
    
    public String getcomment() {
        return comment;
    }

    public void setusername(String comment) {
        this.comment = comment;
    }
}
