/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao.impl;

import com.movieflix.dao.DetailDao;
import com.movieflix.model.Items;
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
public class DetailDaoImpl implements DetailDao {

    private static final String GET_ITEM = "select * from movieflix.items where itemId = ?";

    public DetailDaoImpl() {
    }

    @Override
    public List<Items> showItemDetails(String Id) {
        List<Items> item = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();

            PreparedStatement smt = connection.prepareStatement(GET_ITEM);
          
            // Set Parameters
            smt.setString(1, Id);

            ResultSet res = smt.executeQuery();
            while (res.next()) {
                String itemId = res.getString("itemId");
                String coverImg = res.getString("coverImage");
                String title = res.getString("movieTitle");
                String description = res.getString("movieDescription");
                String rating = res.getString("movieRating");
                Integer releaseYear = res.getInt("releaseYear");
                String duration = res.getString("movieDuration");
                String genre = res.getString("movieGenre");
                String ytlink = res.getString("youtubeTrailer");
                String cast = res.getString("movieCast");
                String director = res.getString("movieDirector");

                item.add(new Items(itemId, coverImg, title, description, rating, releaseYear, duration, genre, ytlink, cast, director));
            }
            res.close();
        } catch (SQLException se) {
        }
        return item;
    }
}
