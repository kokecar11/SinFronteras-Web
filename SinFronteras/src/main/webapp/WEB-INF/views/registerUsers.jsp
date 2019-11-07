<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registro</title>

          <link rel="stylesheet" href="/css/modal.css" type="text/css">
          <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		
	</head>
	<body class="body-login">
		<form:form action="addUser" method="post" modelAttribute="user" class="formulario">
                     <h1 class="slogan-3"><i class="fas fa-address-card"></i></i> Formulario de Registro</h1>
                <div class="content-form">
                    <div class="input-content">
                        <i class="fas fa-user icon"></i>
                        <form:input path="userName" type="text" placeholder="Nombres"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-align-left icon"></i>
                        <form:input path="userLastname" type="text" placeholder="Apellidos"/>
                   </div>
                    <div class="input-content">
                        <i class="fas fa-envelope icon"></i>
                        <form:input path="userEmail" placeholder="Correo Electronico"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-key icon"></i>
                        <form:input path="userPassword" type="password" required="on" placeholder="Contraseña"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-phone-alt icon"></i>
                        <form:input path="userTel" type="tel" placeholder="Telefono"/>
                    </div>
                
                   <input type="submit" value="Registrar!" class="btn-registro">
                    <p>Al llenar el registro, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
                    <p>¿Ya tienes una Cuenta? <a  class="link" id="open">Iniciar Sesión</a></p>
                </div>
		</form:form>
		
		<h2>Users List</h2>
		<table>
			<tr>
                            <td><strong>ID</strong></td>
				<td><strong>Nickname</strong></td>
				<td><strong>Email</strong></td>
                                <td><strong>Name</strong></td>
				<td><strong>lastname</strong></td>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
                                        <td>${user.userId}</td>
					<td>${user.userName}</td>
					<td>${user.userEmail}</td>
                                        <td>${user.userTel}</td>
					<td>${user.userLastname}</td>
                                        <td><a href="deleteUsers?userx=${user.getUserId()}">Eliminar</a></td>
                                        <td><a href="deleteUsers?userx=${user.getUserId()}">Modificar</a></td>
				</tr>
			</c:forEach>
		</table>
                
                <div id="mymodal" class="modal">
    <div class="flex" id="flex">
      <div class="contenido-modal">
        <div class="modal-header">
            <h1 class="slogan-3"><i class="fas fa-user-circle"></i> Iniciar Sesión</h1>
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
                    <input type="submit" value="Iniciar Sesión" class="btn-registro">
                    
                  </div>
            </form>
        </div>
        <div class="modal-footer">
              <p>Al registrate, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
              <p>¿Aún no tienes una Cuenta? <a href="registerUsers" class="link">Registrar!</a></p>
        </div>
      </div>
    </div>
  </div>
<script src="js/modal.js"></script>
	</body>
</html>