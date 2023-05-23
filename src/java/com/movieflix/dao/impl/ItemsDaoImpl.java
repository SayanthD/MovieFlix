/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao.impl;

import com.movieflix.dao.ItemsDao;
import java.util.List;
import com.movieflix.utils.JDBCUtils;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import com.movieflix.model.Items;
import java.sql.PreparedStatement;

/**
 *
 * @author HP
 */
public class ItemsDaoImpl implements ItemsDao {
    
    private static final String SELECT_ITEMS_INDEX = "select itemId, movieTitle, coverImage,releaseYear, movieRating, movieGenre from movieflix.items";
    private static final String SELECT_ITEMS_DASHBOARD = "select itemId, movieTitle, movieRating from movieflix.items";
    
    public ItemsDaoImpl() {
    }
    
    @Override
    public List<Items> listItemsforIndex() {
        List<Items> indexitems = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            
            PreparedStatement smt = connection.prepareStatement(SELECT_ITEMS_INDEX);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                String itemId = rs.getString("itemId");         
                String title = rs.getString("movieTitle");
                String coverImg = rs.getString("coverImage");
                Integer releaseYear = rs.getInt("releaseYear");
                String rating = rs.getString("movieRating");
                String genre = rs.getString("movieGenre");
                
                indexitems.add(new Items(itemId, coverImg, title,releaseYear, rating, genre));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return indexitems;
    }
    
    @Override
    public List<Items> listItemsforDashboard() {
        List<Items> dashboarditems = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            
            PreparedStatement smt = connection.prepareStatement(SELECT_ITEMS_DASHBOARD);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                String itemId = rs.getString("itemId");
                String movieTitle = rs.getString("movieTitle");
                String movieRating = rs.getString("movieRating");

                dashboarditems.add(new Items(itemId, movieTitle, movieRating));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return dashboarditems;
    }
    
}
