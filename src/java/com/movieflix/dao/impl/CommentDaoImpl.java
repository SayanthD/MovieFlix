/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao.impl;

import com.movieflix.dao.CommentDao;
import com.movieflix.model.Comment;
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
public class CommentDaoImpl implements CommentDao{
    
    private static final String SELECT_ITEM_COMMENTS = "select * from movieflix.comments where itemId = ?";
    
    public CommentDaoImpl() {
    }
    
    @Override
    public List<Comment> listDetailComment(String Id) {
        List<Comment> comment = new ArrayList<>();

        try {
            Connection connection = JDBCUtils.getConnection();
            PreparedStatement smt = connection.prepareStatement(SELECT_ITEM_COMMENTS);
            
            // Set Parameters
            smt.setString(1, Id);

            ResultSet rs = smt.executeQuery();
            while (rs.next()) {
                String commentText = rs.getString("comment");
                comment.add(new Comment(commentText));
            }
            rs.close();
        } catch (SQLException se) {
        }
        return comment;
    }
}
