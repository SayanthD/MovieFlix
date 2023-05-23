/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao.impl;

import com.movieflix.dao.UsersDao;
import com.movieflix.model.Users;
import com.movieflix.utils.JDBCUtils;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author HP
 */
public class UsersDaoImpl implements UsersDao {
    
    private static final String SELECT_ALL_USERS = "select * from movieflix.users";
    private static final String SELECT_USERS_DASHBOARD = "select userId, username, userEmail, firstName from movieflix.users";
    
    public UsersDaoImpl() {
    }

    @Override
    public List<Users> listSiteUsers() {
        List<Users> user = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement smt = connection.prepareStatement(SELECT_ALL_USERS);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                Integer userId = rs.getInt("userId");
                String username = rs.getString("username");
                String userEmail = rs.getString("userEmail");
                String firstName = rs.getString("firstName");
                String userRole = rs.getString("userRole");
                String userStatus = rs.getString("userStatus");

                user.add(new Users(userId, username, userEmail, firstName, userRole, userStatus));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return user;
    }
    
    @Override
    public List<Users> listUsersDashboard() {
        List<Users> dashboarduser = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement smt = connection.prepareStatement(SELECT_USERS_DASHBOARD);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                Integer userId = rs.getInt("userId");
                String username = rs.getString("username");
                String userEmail = rs.getString("userEmail");
                String firstName = rs.getString("firstName");

                dashboarduser.add(new Users(userId, username, userEmail, firstName));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return dashboarduser;
    }
}
