<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Inicio de Sesi�n</title>

          <link rel="stylesheet" href="/css/login.css" type="text/css">
          <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		
	</head>
        <body class="body-login">
            
            
            <form action='<spring:url value="/loginAction"/>' method="post" class="formulario">
                 <h1 class="slogan-3"><i class="fas fa-user-circle"></i> Iniciar Sesi�n</h1>
                <div class="content-form">
                    <div class="input-content">
                        <i class="fas fa-envelope icon"></i>
                     <input required="on" type="text" name="Email_User" placeholder="Correo Electronico" />
                    </div>
                    <div class="input-content">
                        <i class="fas fa-key icon"></i>
                        <input name="Password_User" type="password" required="on" placeholder="Contrase�a"/>
                    </div>
                    <input type="submit" value="Iniciar Sesi�n" class="btn-registro">
                    <p>�A�n no tienes una Cuenta? <a href="registerUsers" class="link">Registrar!</a></p>
                  </div>
            </form>
<script src="js/modal.js"></script>
	</body>
</html>