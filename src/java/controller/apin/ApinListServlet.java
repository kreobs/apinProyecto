package controller.apin;

import dataAccess.ConnectionDB;
import dataAccess.UserDAO;
import java.io.*;
import java.sql.Connection;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import apin.business.User;
//import murach.data.UserDB;

@WebServlet(urlPatterns = {"/ApinListServer"})
public class ApinListServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/index.html";
// get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }
// perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/registration.jsp"; // the "join" page
        } else if (action.equals("add")) {
// get parameters from the request
            String name = request.getParameter("name");
            String mobile = request.getParameter("mobile");
            String address = request.getParameter("address");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
// store data in User object and save User object in database
            User user = new User(name, mobile, address, email, password);

            ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();

            UserDAO userDao = new UserDAO(connection);
             userDao.addUserMySql(user);
// set User object in request object and set URL
            request.setAttribute("user", user);
            url = "/login.jsp"; // the "thanks" page
        } else if (action.equals("find")) {
             ConnectionDB connectionDB = new ConnectionDB();
            Connection connection = connectionDB.getConnectionDB();
           // UserDAO userDao = new UserDAO(connection);
           // String email = request.getParameter("email");
           // User user = userDao.findUser(email);
           // if (user.getArea().equals("business")) {
           //     url = "/business.jsp";
           // } else if (user.getArea().equals("architecture")) {
           //     url = "/architecture.jsp";
           // } else if (user.getArea().equals("engineering")) {
           //     url = "/eng.jsp";
           // }
           // request.setAttribute("user", user);
        }
// forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        
        ConnectionDB connectionDB = new ConnectionDB();
        Connection connection = connectionDB.getConnectionDB();

        UserDAO userDao = new UserDAO(connection);
       String url ="";
       if (action.equals("all")){
            request.setAttribute("users", userDao.allUsers());
            url="/allEmails.jsp";
       }
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}


