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
	<body>
		<form:form action="addUser" method="post" modelAttribute="user" class="formulario">
                     <h1><i class="fas fa-address-card"></i></i> Formulario de Registro</h1>
                <div class="content-form">
                    <div class="input-content">
                            <i class="fas fa-user icon"></i>
                            <form:input path="nickname" type="text" placeholder="Usuario"/>
                    </div>
                    <div class="input-content">
                            <i class="fas fa-envelope icon"></i>
                           <form:input path="email" placeholder="Correo Electronico"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-align-left icon"></i>
                        <form:input path="name" type="text" placeholder="Nombres"/>
                    </div>
                    <div class="input-content">
                        <i class="fas fa-align-left icon"></i>
                         <form:input path="lastname" type="text" placeholder="Apellidos"/>
                   </div>
                    <div class="input-content">
                            <i class="fas fa-key icon"></i>
                            <form:input path="password" type="password" placeholder="Contraseña"/>
                    </div>
                    
                    
                   <input type="submit" value="Registrar!" class="btn-registro">
                    <p>Al registrate, aceptas nuestras condiciones de uso y políticas de privacidad.</p>
                    <p>¿Ya tienes una Cuenta? <a href="login.html" class="link">Iniciar Sesión</a></p>
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
                                        <td>${user.id}</td>
					<td>${user.nickname}</td>
					<td>${user.email}</td>
                                        <td>${user.name}</td>
					<td>${user.lastname}</td>
                                        <td><a href="deleteUsers?userx=${user.getId()}">Eliminar</a></td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>