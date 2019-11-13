<%-- 
    Document   : nosotros
    Created on : 6/11/2019, 05:48:37 PM
    Author     : sala1
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="/css/index.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
   <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
   <title>Nosotros</title>
    </head>
    <body>
        <header>  
      
        <h1><img class="logo" src="img/logo-sinfronteras.jpeg"> Sin Fronteras</h1>

        <input type="checkbox" id="btn-menu-navbar">
          <label for="btn-menu-navbar"><i class="fas fa-bars"></i></label>

        <nav class="navbar">
          <ul>
            <li><a class ="navbar-btn" href="/" target="\self">Inicio</a></li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="nosotros">Nosotros <span><i class="fas fa-chevron-down"></i></span></a>
              <ul>
                <li><a class ="navbar-btn" href="nosotros/contacto" target="\blank">Contacto</a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="/fundaciones">Fundaciones <span><i class="fas fa-chevron-down"></i></span></a>
              <ul>
                  <li><a class ="navbar-btn" href="/fundaciones/ciegos" target="\blank">Ciegos <i class="fas fa-braille"></i></a></li>
                  <li><a class ="navbar-btn" href="/fundaciones/sordos" target="\blank">Sordos <i class="fas fa-american-sign-language-interpreting"></i></a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="instituciones">Instituciones Educativas <span><i class="fas fa-chevron-down"></i></a>
              <ul>
                  <li><a class ="navbar-btn" href="/instituciones/ciegos" target="\blank">Ciegos <i class="fas fa-braille"></i></a></li>
                  <li><a class ="navbar-btn" href="/instituciones/sordos" target="\blank">Sordos <i class="fas fa-american-sign-language-interpreting"></i></a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn"  id="open">Sign in/Sign up</a></li>
          </ul>         
        </nav>

  </header>


<main>
  <section id="banner">
      <div class="banner-slider">
          <ul>
            <li><img src="img/banner_1.jpg" class="img-fluid" alt="Responsive image"></li>
            <li><img src="img/banner_2.jpg" class="img-fluid" alt="Responsive image"></li>
            <li><img src="img/banner_3.jpg" class="img-fluid" alt="Responsive image"></li>
          </ul> 
        </div>
       <div class="contenedor-slogan">
          <p class="slogan">¡Sin Fronteras, </p>
          <ul class="ultext">
            <li>un lugar donde podras conocer sitios de EDUCACIÓN DE ALTA CALIDAD!</li>
            <li>una herramienta de información EDUCATIVA!</li>
            <li>es gratis CONTACTANOS!</li>
          </ul>
          
        </div>
       

  </section>


</main>
        
        <div class="contenedor">
            
            <div class="contenedorN">
                
                <h2 class="Titulo-1">Nosotros</h2>
                <p class="parrafor-2">Somos una fundación sin animo de lucro, que brinda una herramienta informativa facilitando a las personas con discapacidad visual o auditiva las diferentes instituciones educativas
                                      y fundaciones donde podrán formarse, con el fin de ubicar a las personas en un entorno educativo.</p>
                    <br>
                    <br>
            </div>
            
            <div class="contenedorN">
                <h2 class="Titulo-1">Objetivo</h2>
                <p class="parrafor-2">Nuestro Objetivo como fundación es informar a las personas con discapacidad visual o auditiva de las instituciones educativas especializadas,
                                      esta información es diligenciada por las instituciones o fundaciones, con el fin de que estas personas adquieran una Educación de Alta Calidad
                                     cumpliendo así uno de los ODS de la ONU.</p>
                    <br>
                    <br>
            </div>   
            
            <img src="img/logo-sinfronteras.jpeg">
        </div>
        
        
        <br>
        <br>
        
        <footer>
  <div class="contenedor">
      
      <p class="footerslogan">Sin Fronteras una herramienta de información educativa. </p>
      <p class="copy"><i class="fas fa-american-sign-language-interpreting"></i> Sin Fronteras &copy; 2019-2020 </p>
      <div class="sociales">
       <a href="#"> <i class="fab fa-facebook-square"></i> </a>
          <a  href="#"> <i class="fab fa-instagram"></i> </a>
          <a href="#">  <i class="fas fa-laptop-code"></i> </a>
      </div>
    </div>
</footer>

    
    <script src="js/navbar.js"></script>
    <script src="js/modal.js"></script>

        
    </body>
</html>
