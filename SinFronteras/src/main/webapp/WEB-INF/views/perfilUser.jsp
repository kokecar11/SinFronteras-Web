<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <link rel="stylesheet" href="/css/index.css" type="text/css">
    <link rel="stylesheet" href="/css/modal.css" type="text/css">
   <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
   <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

</head>

<body>
      <header>  
      
        <h1><img class="logo" src="/img/logo-sinfronteras.jpeg"> Sin Fronteras</h1>

        <input type="checkbox" id="btn-menu-navbar">
          <label for="btn-menu-navbar"><i class="fas fa-bars"></i></label>

        <nav class="navbar">
          <ul>
            <li><a class ="navbar-btn" href="/" target="\self">Inicio</a></li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="../nosotros">Nosotros <span><i class="fas fa-chevron-down"></i></span></a>
              <ul>
                <li><a class ="navbar-btn" href="nosotros/contacto" target="\blank">Contacto<span><i class="fas fa-file-signature"></i></span></a></li>
              </ul>
            </li>
            <li class="sub-navbar-btn"><a class ="navbar-btn" href="fundaciones">Fundaciones <span><i class="fas fa-chevron-down"></i></span></a>
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
            <li class="sub-navbar-btn"><a class ="navbar-btn">Registro <span><i class="fas fa-chevron-down"></span></i></a>
              <ul>
                  <li><a class ="navbar-btn" href="/registerUsers" target="\blank">Registrar <i class="fas fa-user-plus"></i></a></li>
                  <li><a class ="navbar-btn" href="/login" target="\blank">Iniciar Sesi�n <i class="fas fa-sign-in-alt"></i></a></li>
              </ul>
            </li>
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
          <p class="slogan">�Sin Fronteras, </p>
          <ul class="ultext">
            <li>un lugar donde podras conocer sitios de EDUCACI�N DE ALTA CALIDAD!</li>
            <li>una herramienta de informaci�n EDUCATIVA!</li>
            <li>es gratis CONTACTANOS!</li>
          </ul>
          
        </div>
  </section>


</main>
<div class="contenedor">    
      <h2 class="slogan-2">Mi Perfil</h2>
      <br>
      <br>
    <div class="perfil-user">
        <div class="perfil-user2">
           <i class="fas fa-user-circle iconuser"></i> 
         
			
			<c:forEach items="${users}" var="user">
                         <c:set var = "uservar" scope = "session" value = "${UserActual.getIdUser()}"/>
                         <c:if test = "${user.userId == uservar}">
				           
           
                <div class="input-content2"> 
                    <label class="Label-user">ID</label>
                    <label class="Label-user2">${user.getIdUser}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Nombre</label>
                    <label class="Label-user2">${user.getName_User}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Apellidos</label>
                    <label class="Label-user2">${user.getLastName_User}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Correo Electronico</label>
                    <label class="Label-user2">${user.getEmail_User}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Telefono</label>
                    <label class="Label-user2">${user.getTel_User}</label>
                </div>
           <br>
           <br>
           <a href="deleteUsers?userx=${user.getIdUser()}" class="btn-modificarU">Eliminar</a>  <a href="updateUsers?userx=${user.getIdUser()}" class="btn-modificarU">Modificar</a>
                </c:if>
               </c:forEach>
           <br>
            <br>
           
       </div>
       
    </div>
</div>
    
    <br>
        
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

    
    <script src="js/navbar.js"></script>
    <script src="js/modal.js"></script>

</body>

</html>