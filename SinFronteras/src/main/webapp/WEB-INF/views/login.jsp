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
                            <input type="text" placeholder="Correo Electronico">
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
        
                </div>
      </div>
    </div>
  </div>
<script src="js/modal.js"></script>
	</body>
</html>