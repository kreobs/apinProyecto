<%-- 
    Document   : admin
    Created on : Feb 24, 2016, 2:51:43 PM
    Author     : Oops
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="header">
				<div >
                                    <h1>Hostel management system</h1>
				</div>
				<div id="navigation">
					<ul>
						<li>
							<a href="index.jsp">Home</a>
						</li>
						<li>
							<a href="about.html">About</a>
						</li>
						<li>
							<a href="rooms.html">Rooms</a>
						</li>
						
						<li>
							<a href="foods.html">Food</a>
						</li>
						<li>
							<a href="registration.jsp">Join Us</a>
						</li>
						<li>
							<a href="contact.html">Contact</a>
						</li>
					</ul>
				</div>
			</div>
        <div style="margin-left: 500px;">
  <a href="allot.jsp">insert data in allot</a>
  <br>
  <br>
  
   <a href="admininvoice.jsp">insert data in invoice</a>
    <br>
 
  <br>
  
  
   </div>
        
        <h1 style="margin-left: 200px;">delete student</h1>
        <div>
            <pre>
            <form action="delete.jsp" method="post">
                
                <input type="text" name="name" placeholder="enter student name">
                
                <input type="submit" value="delete student"/>
                
            </form>
          </pre>
        </div>
        <h1 style="margin-left: 200px;">insert staff</h1>
           <div>
            <pre> 
              
            <form action="staff.jsp" method="post">
                
                <input type="text" name="name" placeholder="enter  name">
                
                <input type="email" name="email" placeholder="email">
                
                <input type="text" name="mob" placeholder="mobile">
                
                <input type="submit" value="insert staff"/>
                
            </form>
          </pre>
        </div>
        <h1 style="margin-left: 200px;">delete staff</h1>
         <div>
            <pre>
            <form action="deletestaff.jsp" method="post">
                
                <input type="text" name="name" placeholder="enter name">
                
                <input type="submit" value="delete staff"/>
                
            </form>
          </pre>
        </div>
        
        <table border="2" id="usersTable"class="cell-border hover compact" cellspacing="0" width="100%">
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>mobile</th>
                    <th>admin</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${userList}" >
                
                <div class="row" id="projectInfo">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.name}</td>
                        <td>${user.address}</td>
                        <td>${user.mobile}</td>
                        <td>${user.getIsAdmin()}</td>
                    </tr>   
            </c:forEach>
        </tbody>
    </table>
        <br>
        <br>
        <br>
       
    </body>
</html>
