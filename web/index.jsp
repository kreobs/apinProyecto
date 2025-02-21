<!DOCTYPE html>
<!-- Website template by freewebsitetemplates.com -->
<html>
    <head>
        <meta charset="UTF-8">
        <title>APIN Torreon</title>
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
                </div>
                    
                    
                    
            </div>
            <div id="contents" style="display: block; margin: auto;">
                <div id="box">
                    <div class="body">
                        <div>
                        <% if(session.getAttribute("email") != null) { %>
                            <a href="/apinProyecto/logout" style="float: right;">Logout</a>
                            <% if(session.getAttribute("isAdmin") != null) { %>
                            <a href="/apinProyecto/user" style="float: right; padding-right: 5px;">Admin</a>
                            <% } %>
                        <% } %>
                        </div>
                        <center><img src="images/apin/ni馻.png" alt="image" align="middle" height="352" width="598"></center>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <h1>Unete a nuestra familia</h1>   
                            
                        <section>
                            <p>
                                La Asociaci贸n Pro-Infancia Neurog茅nica, A.C. (APIN) es una Organizaci贸n de la Sociedad Civil (OSC) con m谩s de 25 a帽os de existencia. Ha dado servicio a ni帽os con discapacidad de los estados de Coahuila, Durango, Zacatecas y Chihuahua. Cuenta con un sistema de rehabilitaci贸n pedi谩trico especializado en ESPINA B脥FIDA en donde se brinda a los ni帽os y a sus familias amor, esperanza y el cuidado necesario para lograr una rehabilitaci贸n integral.
                                    
                                ATENCI脫N M脡DICA INTEGRAL
                                Contamos con el apoyo de m谩s de 30 m茅dicos especialistas que de manera voluntaria brindan atenci贸n a nuestros ni帽os y ni帽as.
                                <br>
                                <br>
                                PROGRAMA DE 脫RTESIS Y REHABILITACI脫N
                                Se tiene sinergia con el Club Rotario Torre贸n Empresarial para conseguir el equipo y las 贸rtesis que requieren nuestros ni帽os.
                                <br>
                                <br>
                                PROGRAMA DE 脕CIDO F脫LICO
                                Con el fin de prevenir malformaciones cong茅nitas, se lleva a cabo una campa帽a permanente en la regi贸n para concientizar a la poblaci贸n de tomar 谩cido f贸lico, mismo que APIN y el Club Rotario Torre贸n Empresarial proporciona de manera gratuita. 
                                <br>
                                <br>
                                PROGRAMA DE VOLUNTARIADO Y EDUCACI脫N CONTINUA
                                Contamos con el apoyo de voluntarios y alumnos de servicio social para atender los distintos programas con los que cuenta la asociaci贸n adem谩s de participar en los programas de educaci贸n que se tienen contemplados para el beneficio de nuestros pacientes.
                                <br>
                                <br>
                                PROGRAMA DE SOCIABILIZACI脫N
                                Se realizan actividades en las que los ni帽os y ni帽as de APIN conviven y socializan. Adem谩s de las actividades dentro de la asociaci贸n, se organizan visitas al cine, museos, parques, etc.
                                <br>
                                <br>
                                PROGRAMA DE FORMACI脫N ESPIRITUAL
                                Se cuenta con un programa de catequesis impartido por voluntarios y se cuenta con el valioso apoyo de AMSIF (Asociaci贸n Mexicana Para la Superaci贸n Integral de la Familia) que promueve la educaci贸n y formaci贸n integral de las madres de familia de nuestra asociaci贸n.
                                <br>
                                <br>
                            </p>
                        </section>
                    </div>  
                </div>
            </div>       
        </div>   
    </body>
</html>