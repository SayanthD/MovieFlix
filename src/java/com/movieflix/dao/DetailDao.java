/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao;

import com.movieflix.model.Items;
import java.util.List;

/**
 *
 * @author HP
 */
public interface DetailDao {
    List<Items> showItemDetails(String itemId);
}
