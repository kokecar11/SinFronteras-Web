<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registro</title>

          <link rel="stylesheet" href="/css/login.css" type="text/css">
          <script src="https://kit.fontawesome.com/6c9ade801c.js"></script>
            <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
		
	</head>
	<body class="body-login">
		<form:form action="addUser" method="post" modelAttribute="user" class="formulario">
                     
                <h1 class="slogan-3"><i class="fas fa-address-card"></i></i> Formulario de Registro</h1>
                <form:hidden path="idUser" />
                <div class="content-form">
                    <div class="input-content">
                        <i class="fas fa-user icon"></i>
                        <form:input path="Name_User" type="text" required="on" placeholder="Nombres"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-align-left icon"></i>
                        <form:input path="LastName_User" type="text" required="on" placeholder="Apellidos"/>
                   </div>
                    <div class="input-content">
                        <i class="fas fa-envelope icon"></i>
                        <form:input path="Email_User" required="on" type="text" placeholder="Correo Electronico" />
                    </div>
                    <div class="input-content">
                        <i class="fas fa-key icon"></i>
                        <form:input path="Password_User" type="password" required="on" placeholder="Contraseña"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-phone-alt icon"></i>
                        <form:input path="Tel_User" type="tel" placeholder="Telefono"/>
                    </div>

                    <form:hidden path="Status_User" />
                
                   <input type="submit" value="Registrar!" class="btn-registro">
                    <p>Al llenar el registro, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
                    <p>¿Ya tienes una Cuenta? <a  class="link" href="login">Iniciar Sesión</a></p>
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
                                        <td>${user.getIdUser()}</td>
					<td>${user.getName_User()}</td>
					<td>${user.getEmail_User()}</td>
                                        <td>${user.getTel_User()}</td>
					<td>${user.getLastName_User()}</td>
                                        <td><a href="deleteUsers?userx=${user.getIdUser()}">Eliminar</a></td>
                                        <td><a href="updateUsers?userx=${user.getIdUser()}">Modificar</a></td>
				</tr>
			</c:forEach>
		</table>
               
<script src="js/modal.js"></script>
	</body>
</html>