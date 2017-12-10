<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<!-- Bootstrap core CSS -->	 	    
	     <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link href="${pageContext.request.contextPath}/css/estilos.css" rel="stylesheet">
	    	    	    	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>		 
	    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/funciones.js"></script> 
	</head>  
<body>

<header class="panel-primary">
<div class="container-fluid panel-heading">
    <h1><center><img src="${pageContext.request.contextPath}/img/Logo.jpg"/></center></h1>
   <div class="col-md-11"> <h4>${usuario.nombre} ${usuario.apellido}</h4></div>  <div class="col-md-1"><a href="login"  class="btn btn-info btn-lg active" role="button">Salir</a></div>
</div>

</header>

<div class="row">
  <div class="col-md-4"></div>
<div class="col-md-4">		<br></br>

<div class="panel panel-primary"><div class="panel-heading">${Materias.nombre}</div>
<form:form action="rendirExamen" method="POST" modelAttribute="Materias" >
  <input type="hidden" name="nombre" value="${usuario.nombre}">
  <input type="hidden" name="apellido" value="${usuario.apellido}">
<div class="form-check" id="${usuario.id}">		

			
			<c:forEach items= "${Materias.examen}" var="examen" >	
				<br>		
		  	<center><input class="form-check-input"  type="checkbox"  name="idExamen" value="${examen.id}"  onclick="validacion('${usuario.id}',this)" ><label class="form-check-label">${examen.nombre}</label></center>		       	    
			</c:forEach> 
</div>	
<br></br>
<input type="submit" class="btn btn-lg btn-danger btn-block" value="Enviar"/>

</form:form>

	</div>
	</div>
<div class="col-md-4"></div></div>
</body>
</html>