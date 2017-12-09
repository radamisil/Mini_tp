<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
	<head>
		  <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link href="css/estilos.css" rel="stylesheet">
	     <link href="../../css/estilos.css" rel="stylesheet">
	    	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>		 
	    <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="js/funciones.js"></script> 
  		
	</head>
<body>

<header class="panel-primary">
<div class="container-fluid panel-heading">
  <h1><center><img src="../../img/Logo.jpg"/></center></h1>
   <div class="col-md-11"> <center><h2>Carga de respuestas ${usuario.nombre} ${usuario.apellido}</h2></center></div>  <div class="col-md-1"><a href="/proyecto-limpio-spring/exit"  class="btn btn-info btn-lg active" role="button">Salir</a></div>
</div>
</header>


<div class="contenedor">

<form:form action="../../altaRespuestaDocenteok" method="POST" modelAttribute="respuesta"> 

<center><h1><span class="label label-info">Examen: ${examen.nombre}</span></h1></center>
<center><h1><span class="label label-info">Pregunta: ${pregunta.nombre} </span></h1></center>



 <div class="form-group">
 
	<input type="hidden" name="idExamen" value="${examen.id}"/>
	 <input type="hidden" name="idPregunta" value="${pregunta.id}"/> 

<br>
	<form:input path="nombre" id="nombre" class="form-control" placeholder="Ingrese la nueva Respuesta"  />
<br>
 
  <label for="checkCorrecta">La respuesta ingresada es la Correcta?</label>
 <select class="btn" id="checkCorrecta" name="checkCorrecta">
   <option value="1">Correcta</option>
   <option value="0">Incorrecta</option>
 
</select>
							
	
<br>
<br>
<br>
<br>
<br>
<br>
<br>
	<center><input class="btn btn-primary"  type="submit" value="Guardar Nueva Respuesta"/></center>
 </div>	   
</form:form>

 </div>	 
<br>
<br>

<br>
<br>





<!-- Footer -->	     

	                <div class="footer">
	                    <center><p><h6>Copyright &copy; Proyecto Colmena 2018</h6></p></center>
	                </div>
</body>
</html>