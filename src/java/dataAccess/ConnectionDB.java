/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataAccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cortana
 */
public class ConnectionDB {

    private Connection connection = null;
    private static final Logger logger = Logger.getLogger(ConnectionDB.class.getName());

    public ConnectionDB() {
        
        try {
            
          
           String host = "localhost";
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://" + host + ":3306/apin2017",
                    user = "root", password = "israel";
          
           connection = DriverManager.getConnection(url, user, password);
        //Class.forName("org.apache.derby.jdbc.EmbeddedDriver");  
        //String url = "jdbc:derby:" + host + ":1527/tec",
        //       user = "israel", password = "israel";
        //connection = DriverManager.getConnection(url, user, password);
            
        } catch (SQLException sqle) {
            logger.log(Level.SEVERE, sqle.toString(), sqle);
            throw new RuntimeException(sqle);

        } catch (Exception e) {
            logger.log(Level.SEVERE, e.toString(), e);
        }
    }

    public Connection getConnectionDB() {
        return connection;
    }

    public void setConnectionDB(Connection connection) {
        this.connection = connection;
    }
}
