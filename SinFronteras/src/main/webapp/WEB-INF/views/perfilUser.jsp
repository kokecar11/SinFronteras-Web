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
                <li><a class ="navbar-btn" href="nosotros/contacto" target="\blank">Contacto</a></li>
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
                         <c:set var = "uservar" scope = "session" value = "8"/>
                         <c:if test = "${user.userId == uservar}">
				           
           
                <div class="input-content2"> 
                    <label class="Label-user">ID</label>
                    <label class="Label-user2">${user.userId}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Nombre</label>
                    <label class="Label-user2">${user.userName}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Apellidos</label>
                    <label class="Label-user2">${user.userLastname}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Correo Electronico</label>
                    <label class="Label-user2">${user.userEmail}</label>
                </div>
                <div class="input-content2"> 
                    <label class="Label-user">Telefono</label>
                    <label class="Label-user2">${user.userTel}</label>
                </div>
           <br>
           <br>
           <a href="deleteUsers?userx=${user.getUserId()}" class="btn-modificarU">Eliminar</a>  <a href="updateUsers?userx=${user.getUserId()}" class="btn-modificarU">Modificar</a>
                </c:if>
               </c:forEach>
           <br>
            <br>
           
       </div>
       
    </div>
</div>
    
    <br>
    
    <div id="mymodal" class="modal">
    <div class="flex" id="flex">
      <div class="contenido-modal">
        <div class="modal-header">
            <h1 class="slogan-3"><i class="fas fa-user-circle"></i> Iniciar Sesi�n</h1>
            <span class="close" id="close"><i class="fas fa-window-close"></i></span>
        </div>
        <div class="modal-body">
            <form class="formulario" action="">
                <div class="content-form">
                    <div class="input-content">
                            <i class="fas fa-user icon"></i>
                            <input type="text" placeholder="Usuario">
                    </div>
                    <div class="input-content">
                            <i class="fas fa-key icon"></i>
                            <input type="password" placeholder="Contrase&ntilde;a">
                    </div>
                    <input type="submit" value="Iniciar Sesi�n" class="btn-registro">
                    
                  </div>
            </form>
        </div>
        <div class="modal-footer">
              <p>Al registrate, aceptas nuestras condiciones de uso y pol�ticas de privacidad.</p>
              <p>�A�n no tienes una Cuenta? <a href="registerUsers" class="link">Registrar!</a></p>
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

    
    <script src="js/navbar.js"></script>
    <script src="js/modal.js"></script>

</body>

</html>