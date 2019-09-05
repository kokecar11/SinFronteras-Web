<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link rel="stylesheet" href="/css/index.css" type="text/css">
   <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>

<body>
  <header>  
      
        <h1><img class="logo" src="img/logo-sinfronteras.jpeg"> Sin Fronteras</h1>

        <input type="checkbox" id="btn-menu-navbar">
    <label for="btn-menu-navbar"><i class="fas fa-bars"></i></label>

        <nav class="navbar">
          <ul>
            <li><a class ="navbar-btn"href="" target="\blank">Inicio</a></li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="">Nosotros <span><i class="fas fa-chevron-down"></i></span></a>
              <ul>
                <li><a class ="navbar-btn" href="#" target="\blank">Objetivos</a></li>
                <li><a class ="navbar-btn" href="#" target="\blank">Visión</a></li>
                <li><a class ="navbar-btn" href="#" target="\blank">Misión</a></li>
                <li><a class ="navbar-btn" href="#" target="\blank">Contacto</a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="">Fundaciones <span><i class="fas fa-chevron-down"></i></span></a>
              <ul>
                  <li><a class ="navbar-btn" href="#" target="\blank">Ciegos <i class="fas fa-braille"></i></a></li>
                  <li><a class ="navbar-btn" href="#" target="\blank">Sordos <i class="fas fa-american-sign-language-interpreting"></i></a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="">Instituciones Educativas <span><i class="fas fa-chevron-down"></i></a>
              <ul>
                  <li><a class ="navbar-btn" href="#" target="\blank">Ciegos <i class="fas fa-braille"></i></a></li>
                  <li><a class ="navbar-btn" href="#" target="\blank">Sordos <i class="fas fa-american-sign-language-interpreting"></i></a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="editUsers"target="\blank">Sign in/Sign up</a></li>
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
    <h2 class="slogan-2">¡Ultimás Noticias!</h2>
    <div class="card-views">
      <div class="image">
        <img src="/img/banner_1.jpg">
        <div class="title">
          <h2>Instituto Nuestra Señora de la Sabiduría (INSABI)</h2>
          <div class="description">
            <p>Institución privada sin animo de lucro fundada por las Hijas de las Sabiduría en 1942. Actualmente atienden la educación de 350 niños y jóvenes....</p>
            <button><a class="btn_leermas" href="http://infoinsabi.blogspot.com/" target="\blank">Leer más...</a></button>
          </div>
        </div>
      </div>
    </div>

<!--
  CardsViewS
-->
    <div class="card-views">
        <div class="image">
          <img src="img/banner_1.jpg">
          <div class="title">
            <h2>COLEGIO SAN FRANCISCO IED</h2>
            <div class="description">
              <p>Nuestros estudiantes tienen la opción de realizar<strong>semestres académicos en el exterior</strong></p>
             <button><a class="btn_leermas" href="http://infoinsabi.blogspot.com/" target="\blank">Leer más...</a></button>
            </div>
          </div>
        </div>
      </div>
  <!--
  CardsViewS
-->
    <div class="card-views">
        <div class="image">
          <img src="img/banner_3.jpg">
          <div class="title">
            <h2>Cursos intersemestrales</h2>
            <div class="description">
              <p>Ofrecemos la posibilidad de tomar<strong> cursos opcionales intersemestrales,</strong> y así incrementar el numero de creditos a cursar.</p>
              <button>Leer más...</button>
            </div>
          </div>
        </div>
      </div>

  <!--
  CardsViewS
-->
    <div class="card-views">
        <div class="image">
          <img src="img/banner_1.jpg">
          <div class="title">
            <h2>Inglés en el Pensum</h2>
            <div class="description">
              <p>Nuestro plan de estudios incluye <strong>Inglés</p>
              <button>Leer más...</button>
            </div>
          </div>
        </div>
      </div>
  <!--
  CardsViewS
-->
    <div class="card-views">
        <div class="image">
          <img src="img/banner_2.jpg">
          <div class="title">
            <h2>Proyectos e investigación</h2>
            <div class="description">
              <p>Participamos en <strong>Proyectos de investigación </strong>en inteligencia artificial, seguridad y más...</p>
              <button>Leer más...</button>
            </div>
          </div>
        </div>
      </div>
  <!--
  CardsViewS
-->
    <div class="card-views">
        <div class="image">
          <img src="img/banner_1.jpg">
          <div class="title">
            <h2>Universidades internacionales</h2>
            <div class="description">
              <p>Nuestros estudiantes pueden participar en <strong>visitas técnicas internacionales</strong> a las mejores universidades del mundo.</p>
              <button>Leer más...</button>
            </div>
          </div>
        </div>
      </div>

</div>


<footer>

  <div class="contenedor">
      
      <div class="sociales">
       <a href="#"> <i class="fab fa-facebook-square"></i> </a>
          <a  href="#"> <i class="fab fa-instagram"></i> </a>
          <a href="#">  <i class="fas fa-laptop-code"></i> </a>
      </div>
      <p class="footerslogan">Sin Fronteras una herramienta de información educativa. </p>
      <p class="copy"><i class="fas fa-american-sign-language-interpreting"></i> Sin Fronteras &copy; 2019-2020 </p>
    </div>


</footer>

    
    <script src="js/navbar.js"></script>

</body>

</html>