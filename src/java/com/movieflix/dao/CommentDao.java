/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao;

import com.movieflix.model.Comment;
import java.util.List;

/**
 *
 * @author HP
 */
public interface CommentDao {
    List<Comment> listDetailComment(String itemId);
}
