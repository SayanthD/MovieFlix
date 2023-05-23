/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.dao;

import com.movieflix.model.Users;
import java.util.List;

/**
 *
 * @author HP
 */
public interface UsersDao {
    List<Users> listSiteUsers();
    List<Users> listUsersDashboard();
}
