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
      <h2 class="slogan-2">Perfil de Usuario</h2>
      <br>
      <br>
      <div class="perfil-user">
        <form:form action="addFundaciones" method="post" modelAttribute="fundacion" class="formularioUser">
            <h2 class="slogan-2">Informaci�n de Fundaci�n o Instituci�n</h2>
               
                <div class="content-formU">
                    <div class="input-content2">
                        <i class="fas fa-user icon"></i>
                        <form:input path="instName" type="text" placeholder="Nombre de Fundaci�n/Instituci�n"/>
                    </div>
                    
                     <div class="input-content2">
                        <i class="fas fa-list icon"></i>
                        <form:select path="Tipo"  >
                            <form:option value="Fundaci�n"/>    
                            <form:option value="Instituci�n"/>   
                        </form:select>
                   </div>
                    
                    <div class="input-content2">
                        <i class="fas fa-list icon"></i>
                        <form:select path="instTipo"  >
                            <form:option value="Discapacidad Auditiva"/>    
                            <form:option value="Discapacidad Visual"/>   
                        </form:select>
                   </div>
                    <div class="input-content2">
                       <i class="fas fa-exclamation icon"></i>
                        <form:input path="instMision" placeholder="Misi�n de la Fundaci�n/Instituci�n"/>
                    </div>
                    <div class="input-content2">
                        <i class="fas fa-eye icon"></i>
                        <form:input path="instVision" type="text" placeholder="Visi�n de la Fundaci�n/Instituci�n"/>
                    </div>
                    <div class="input-content2">
                        <i class="fas fa-align-left icon"></i>
                        <form:textarea path="instDescripcion" placeholder="Escribe una Descripci�n Breve..."/>
                    </div>
                    <div class="input-content2">
                        <i class="fas fa-link icon"></i>
                        <form:input path="instLink" type="text" placeholder="URL de la Fundaci�n/Instituci�n"/>
                    </div>
                    <div class="input-content2">
                        <i class="fas fa-phone-alt icon"></i>
                        <form:input path="instTel" type="tel" placeholder="Telefono"/>
                    </div>    
                    
                        <div class="input-content2">
                        <i class="fas fa-phone-alt icon"></i>
                        <form:input path="instRolesUser" type="text" placeholder="Rol"/>
                    </div>
                
                   <input type="submit" value="Guardar" class="btn-modificarU">
                </div>
		</form:form>
           
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