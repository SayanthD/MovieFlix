/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.model;

/**
 *
 * @author HP
 */
public class Users {
    private Integer userId;
    private String username;
    private String email;
    private String role;
    private String fullName;
    private String status;

    public Users() {
    }
    
    public Users(Integer userId, String username, String email, String fullName, String role, String status) {
        super();
        this.userId = userId;
        this.username = username;
        this.email = email;
        this.fullName = fullName;
        this.role = role;
        this.status = status;
    }
    
    public Users(Integer userId, String username, String email, String fullName) {
        super();
        this.userId = userId;
        this.username = username;
        this.email = email;
        this.fullName = fullName;
    }
    
    public Integer getId() {
        return userId;
    }

    public void setId(Integer userId) {
        this.userId = userId;
    }
    
    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getfullName() {
        return fullName;
    }

    public void setfullName(String fullName) {
        this.fullName = fullName;
    }

    public String getstatus() {
        return status;
    }

    public void setstatus(String status) {
        this.status = status;
    }
    
}
