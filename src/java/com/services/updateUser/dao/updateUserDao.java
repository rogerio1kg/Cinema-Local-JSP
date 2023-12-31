package com.services.updateUser.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.services.registration.model.User;


public class updateUserDao {
    private String jdbcURL = "jdbc:mysql://localhost:3306/localcinema";
    private String jdbcUsername = "root";
    private String jdbcPassword = "";

    private static final String UPDATE_USERS_SQL = "update users set username=? where username=?;";
    private static final String UPDATE_PWD_SQL = "update users set password=? where username=?;";



    public updateUserDao() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }



   

    public boolean updateUser(String oldUser, String newUser ) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {

        	statement.setString(2,oldUser );
        	statement.setString(1, newUser);
         
            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }
    
    
   

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}