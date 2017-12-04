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
                        <center><img src="images/apin/ni�a.png" alt="image" align="middle" height="352" width="598"></center>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <h1>Unete a nuestra familia</h1>   
                            
                        <section>
                            <p>
                                La Asociación Pro-Infancia Neurogénica, A.C. (APIN) es una Organización de la Sociedad Civil (OSC) con más de 25 años de existencia. Ha dado servicio a niños con discapacidad de los estados de Coahuila, Durango, Zacatecas y Chihuahua. Cuenta con un sistema de rehabilitación pediátrico especializado en ESPINA BÍFIDA en donde se brinda a los niños y a sus familias amor, esperanza y el cuidado necesario para lograr una rehabilitación integral.
                                    
                                ATENCIÓN MÉDICA INTEGRAL
                                Contamos con el apoyo de más de 30 médicos especialistas que de manera voluntaria brindan atención a nuestros niños y niñas.
                                <br>
                                <br>
                                PROGRAMA DE ÓRTESIS Y REHABILITACIÓN
                                Se tiene sinergia con el Club Rotario Torreón Empresarial para conseguir el equipo y las órtesis que requieren nuestros niños.
                                <br>
                                <br>
                                PROGRAMA DE ÁCIDO FÓLICO
                                Con el fin de prevenir malformaciones congénitas, se lleva a cabo una campaña permanente en la región para concientizar a la población de tomar ácido fólico, mismo que APIN y el Club Rotario Torreón Empresarial proporciona de manera gratuita. 
                                <br>
                                <br>
                                PROGRAMA DE VOLUNTARIADO Y EDUCACIÓN CONTINUA
                                Contamos con el apoyo de voluntarios y alumnos de servicio social para atender los distintos programas con los que cuenta la asociación además de participar en los programas de educación que se tienen contemplados para el beneficio de nuestros pacientes.
                                <br>
                                <br>
                                PROGRAMA DE SOCIABILIZACIÓN
                                Se realizan actividades en las que los niños y niñas de APIN conviven y socializan. Además de las actividades dentro de la asociación, se organizan visitas al cine, museos, parques, etc.
                                <br>
                                <br>
                                PROGRAMA DE FORMACIÓN ESPIRITUAL
                                Se cuenta con un programa de catequesis impartido por voluntarios y se cuenta con el valioso apoyo de AMSIF (Asociación Mexicana Para la Superación Integral de la Familia) que promueve la educación y formación integral de las madres de familia de nuestra asociación.
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