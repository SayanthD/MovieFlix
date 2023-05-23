/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.movieflix.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author HP
 */
public class JDBCUtils {
    private static final String URL = "jdbc:mysql://localhost:3306/";
    private static final String DB_NAME = "movieflix";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "";
    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL + DB_NAME, USERNAME, PASSWORD);

        } catch (SQLException | ClassNotFoundException se) {
            System.out.println(se);
        }
        return connection;
    }
}