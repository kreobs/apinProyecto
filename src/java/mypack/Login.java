/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import apin.business.User;
import dataAccess.ConnectionDB;
import dataAccess.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  
                    throws ServletException, IOException { 
        
        String action = request.getParameter("action");
        
        if (action.equals("getUserByEmail")) {
            response.setContentType("text/html");  
                      
            String email=request.getParameter("email");  
            String password=request.getParameter("password");  
        
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            UserDAO userDAO = new UserDAO(connection);
            User user = userDAO.findUserByEmail(email);

            if(user != null && user.hasPassword(password)){
                HttpSession session=request.getSession();  
                session.setAttribute("email", user.getEmail());  
                session.setAttribute("fullName", user.getName());
                session.setAttribute("isAdmin", new Boolean (user.getIsAdmin()));
                request.getRequestDispatcher("index.jsp").include(request, response);
            }else{
                request.getRequestDispatcher("login.jsp").include(request, response);  
            }
        }
    }
}
