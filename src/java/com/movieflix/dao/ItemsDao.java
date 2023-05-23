/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao;

import java.util.List;
import com.movieflix.model.Items;

/**
 *
 * @author HP
 */
public interface ItemsDao {
    List<Items> listItemsforIndex();
    List<Items> listItemsforDashboard();
}
