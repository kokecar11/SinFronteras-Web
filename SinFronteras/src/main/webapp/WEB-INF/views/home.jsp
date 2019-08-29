<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <link rel="stylesheet" href="/css/index.css" type="text/css">
   <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
	</head>

<body>
  <header>

    <div class="contenedor">
      
        <h1><img class="logo" src="img/logo-sinfronteras.jpeg"> Sin Fronteras <i class="fas fa-american-sign-language-interpreting"></i></h1>
        <!--<img class="logo" src="img/logo-sinfronteras.jpeg">-->

        <nav class="navbar">
          <a class ="navbar-btn"href="login.html" target="\blank">Login</a>
          <a class ="navbar-btn" href="editUsers" target="\blank">Registro</a>
          <a class ="navbar-btn" href="#" target="\blank">Contacto</a>
          <a class ="navbar-btn" href="#" target="\blank">Fundaciones</a>
          <a class ="navbar-btn" href="#" target="\blank">Instituciones Educativas</a>
          <a class ="navbar-btn" href=""target="\blank" >Inicio</a>
        </nav>
    </div>
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
          <p class="slogan">�Sin Fronteras, </p>
          <ul class="ultext">
            <li>un lugar donde podras conocer sitios de EDUCACI�N DE ALTA CALIDAD!</li>
            <li>una herramienta de informaci�n EDUCATIVA!</li>
            <li>es gratis CONTACTANOS!</li>
          </ul>
          
        </div>
        <a href="#">Leer m�s...</a>

  </section>


</main>

<div class="contenedor">
    <h2 class="slogan-2">�Ultim�s Noticias!</h2>
    <div class="card-views">
      <div class="image">
        <img src="/img/banner_2_2.jpg">
        <div class="title">
          <h2>�Alta Calidad!</h2>
          <div class="description">
            <p>Contamos con <strong>Acreditaci�n de Alta Calidad</strong></p>
            <button>Leer m�s...</button>
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
            <h2>Semestres Academicos</h2>
            <div class="description">
              <p>Nuestros estudiantes tienen la opci�n de realizar<strong>semestres acad�micos en el exterior</strong></p>
              <button>Leer m�s...</button>
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
              <p>Ofrecemos la posibilidad de tomar<strong> cursos opcionales intersemestrales,</strong> y as� incrementar el numero de creditos a cursar.</p>
              <button>Leer m�s...</button>
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
            <h2>Ingl�s en el Pensum</h2>
            <div class="description">
              <p>Nuestro plan de estudios incluye <strong>Ingl�s</p>
              <button>Leer m�s...</button>
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
            <h2>Proyectos e investigaci�n</h2>
            <div class="description">
              <p>Participamos en <strong>Proyectos de investigaci�n </strong>en inteligencia artificial, seguridad y m�s...</p>
              <button>Leer m�s...</button>
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
              <p>Nuestros estudiantes pueden participar en <strong>visitas t�cnicas internacionales</strong> a las mejores universidades del mundo.</p>
              <button>Leer m�s...</button>
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
      <p class="footerslogan">Sin Fronteras una herramienta de informaci�n educativa. </p>
      <p class="copy"><i class="fas fa-american-sign-language-interpreting"></i> Sin Fronteras &copy; 2019-2020 </p>
    </div>


</footer>


</body>

</html>