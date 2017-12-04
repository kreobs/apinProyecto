package mypack;

import apin.business.User;
import dataAccess.ConnectionDB;
import dataAccess.UserDAO;
import java.io.*;
import java.sql.Connection;
import java.util.ArrayList;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.logging.Logger;
import java.util.logging.Level;
import javax.servlet.annotation.WebServlet;
import javax.swing.JOptionPane;

@WebServlet(urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.jsp";
        // get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "inicio";
        }
        if (action.equals("inicio")) {
            url = "/index.jsp";
        } else if (action.equals("addUser")) {
            String name = request.getParameter("name");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            // store data in User object and save User object in database
            User user = new User(name, mobile, address, email, password);
            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            UserDAO userDAO = new UserDAO(connection);
            userDAO.addUser(user);

            url = "/index.jsp";

        }
        // forward request and response objects to specified URL

        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
          ConnectionDB connectionDB = new ConnectionDB();
          Connection connection = connectionDB.getConnectionDB();
          
          UserDAO userDAO = new UserDAO(connection);
          ArrayList<User> users = userDAO.getUserList();
          request.setAttribute("userList", users);
          String url;
            url = "admin.jsp";
          request.getRequestDispatcher(url)
                .include(request, response);
        } 
    }
}
