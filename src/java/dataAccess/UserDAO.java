/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import apin.business.User;


/**
 *
 * @author chuy_
 */
public class UserDAO {

    private PreparedStatement statement;
    private Connection connection;
    private static final Logger logger = Logger.getLogger(UserDAO.class.getName());

    public UserDAO(Connection connection) {
        this.connection = connection;
    }

    public Connection getConnection() {
        return connection;
    }

    public void setConnection(Connection connection) {
        this.connection = connection;
    }

    public void addUser(User user) {
        try {
            statement = connection.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?)");
            synchronized (statement) {
                statement.setString(1, user.getName());
                statement.setString(2, user.getMobile());
                statement.setString(3, user.getAddress());
                statement.setString(4, user.getEmail());
                statement.setString(5, user.getPassword());
                statement.executeUpdate();
            }
            statement.close();
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);
        }
    }

    public User findUser(String name) {
        User user = null;
        try {
            statement = connection.prepareStatement("select *from users where name = ?");
            statement.setString(1, name);
            synchronized (statement) {
                ResultSet results = statement.executeQuery();

                while (results.next()) {
                    user = new User();
                    user.setName(results.getString("name"));
                    user.setMobile(results.getString("mobile"));
                    user.setAddress(results.getString("address"));
                    user.setEmail(results.getString("email"));
                    user.setPassword(results.getString("password"));
                }
            }
            statement.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return user;
    }

    public List<User> allUsers() {
        List<User> users = new ArrayList<>();
        User user = null;
        try {
            statement = connection.prepareStatement("select * from users");            
            synchronized (statement) {
                ResultSet results = statement.executeQuery();

                while (results.next()) {
                    user = new User();
                    user.setName(results.getString("name"));
                    user.setMobile(results.getString("mobile"));
                    user.setAddress(results.getString("address"));
                    user.setEmail(results.getString("email"));
                    user.setPassword(results.getString("password"));
                    users.add(user);
                }
            }
            statement.close();
        } catch (SQLException e) {
            System.err.println(e);
        }
        return users;
    }

    public void addUserMySql(User user) {
        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO users values ('" + user.getName() + "','" + user.getMobile() + "','" + user.getAddress() + "','" + user.getEmail() + "','" + user.getPassword() + "')";
            statement.executeUpdate(query);
            connection.close();
        } catch (SQLException e) {
            System.err.println(e);
        }

    }

}
