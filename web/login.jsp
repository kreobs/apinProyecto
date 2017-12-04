<%-- 
    Document   : registration
    Created on : Feb 24, 2016, 12:26:06 PM
    Author     : Oops
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8">
        <title>News - Bhaccasyoniztas Beach Resort Website Template</title>
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div id="background">
            <div id="page">
                <div id="header">
                    <div >
                        <h1>Hostel management system</h1>
                    </div>
                    <div id="navigation">
                        <ul>
                            <li>
                                <a href="index.jsp">Inicio</a>
                            </li>
                            
                            <li class="dropdown">
                                <a href="about.html" class="dropbtn">Nosotros</a>
                                <div class="dropdown-content">
                                    
                                    <a href="#">Historia</a>
                                    <a href="#">Nos Reconocen</a>
                                    <a href="#">Estructura</a>
                                    <a href="#">Consejo</a>
                                </div>
                            </li>
                            
                            <li class="dropdown">
                                <a href="about.html" class="dropbtn">Noticias</a>
                                <div class="dropdown-content">
                                    <a href="videos.html">Videos</a>
                                    <a href="images.html">Imagenes</a>
                                    
                                </div>
                            </li>
                            <li>
                                <a href="rooms.html">Transparencia</a>
                            </li>
                            
                            <li>
                                <a href="contact.html">Contacto</a>
                            </li>
                            
                            <li>
                                <a href="registration.jsp">Unetenos</a>
                            </li>
                            
                            <li>
                                <a href="login.jsp">Login</a>
                            </li>
                            
                            
                        </ul>
                    </div>
                    <div id="contents">
                        <div class="box">
                            <div>
                                <div id="news" class="body">
                                    
                                    <pre>
     <h1>Login</h1>
     <form method="post" action="/apinProyecto/Login">
        <input type="hidden" name="action" value="getUserByEmail">     
         User Email : <input type="text" name = "email">
         User Pass : <input type="password" name = "password">
     
     <input value="Submit" type="submit">
     </form>                                              
                                         
       
                                    </pre>                                          
                                    
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="footer">
                        <div>
                            <ul class="navigation">
                                <li>
                                    <a href="index.html">Home</a>
                                </li>
                                <li>
                                    <a href="about.html">About</a>
                                </li>
                                <li>
                                    <a href="rooms.html">Rooms</a>
                                </li>
                                <li>
                                    <a href="dives.html">Dive Site</a>
                                </li>
                                <li>
                                    <a href="foods.html">Food</a>
                                </li>
                                <li class="active">
                                    <a href="news.html">News</a>
                                </li>
                                <li>
                                    <a href="contact.html">Contact</a>
                                </li>
                            </ul>
                            <div id="connect">
                                <a href="http://pinterest.com/fwtemplates/" target="_blank" class="pinterest"></a> <a href="http://freewebsitetemplates.com/go/facebook/" target="_blank" class="facebook"></a> <a href="http://freewebsitetemplates.com/go/twitter/" target="_blank" class="twitter"></a> <a href="http://freewebsitetemplates.com/go/googleplus/" target="_blank" class="googleplus"></a>
                            </div>
                        </div>
                        <p>
                            © 2023 by BHACCASYONIZTAS BEACH RESORT. All Rights Reserved
                        </p>
                    </div>
                </div>
                </body>
                </html>
