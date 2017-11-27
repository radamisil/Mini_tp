<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	    
	   
	    
	<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link href="css/estilos.css" rel="stylesheet">
	    
	    
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	    <link href="js/bootstrap.min.js" rel="stylesheet" >
	    <link href="js/jquery-1.11.3.min.js" rel="stylesheet" >
	    
	      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  			
  			
  			<!-- Bootstrap core CSS -->
	    <link href="css/bootstrap.min.css" rel="stylesheet" >
	    <!-- Bootstrap theme -->
	    <link href="css/bootstrap-theme.min.css" rel="stylesheet">
	    <link href="css/estilos.css" rel="stylesheet">
	    
	     <style>
    h6 { color: grey; }
    h4 { color: white; }
    h2 {color: white; }
    h3 {color: black; }
    h1 { color: grey; }
  		</style>
  		
  		<script language="javascript">
//VALIDACION CHECKBOX
function validacion() {
   
  var idCurso = $('select[id=IdCurso]').val();
    
  var todoOk = false;
       
  if (idCurso == 0) {
      alert('Debe seleccionar un curso');      
  } else  {
	   todoOk = true;
  }
    
  return todoOk;
   
}
</script>  	
  		
	</head>
<body>

<header class="panel-primary">
<div class="container-fluid panel-heading">
  <h1><center><img src="C:\java\proyectos\proyecto-limpio-spring\src\main\webapp\WEB-INF\vistas\Logo.jpg"/></center></h1>
   <div class="col-md-11"> <center><h2>Cargue el Ex�men Profesor ${usuario.nombre} ${usuario.apellido}</h2></center></div>  <div class="col-md-1"><a href="/proyecto-limpio-spring/exit"  class="btn btn-info btn-lg active" role="button">Salir</a></div>
</div>
</header>

<br>
<br>


<form:form action="guardarExamen" method="POST" modelAttribute="Examen"> 

<h3>Nuevo Ex�men</h3>

<label for="IdCurso">Curso al cual desea agregar el examen: ${idCursoExamen} </label>

<select id="IdCurso" name="IdCurso" class="form-control">
<option value="0" selected>(seleccione un curso)</option>
<c:forEach items= "${Curso}" var="curso" >
		<option value="${curso.id}">${curso.nombre}</option>	 
	</c:forEach> 
</select> 	

		
			
	<form:input path="nombre" id="nombre"  class="form-control" placeholder="Nombre del Examen"  />
	<br>
	<form:input path="fecha" id="fecha" class="form-control"  placeholder="Fecha del Examen"/>
	<br>	
	<form:input path="tipo" id="tipo" class="form-control"  placeholder="Tipo de Examen"/>
	<br>
	<h5>Porcentaje de respuestas correctas:</h5>
	<form:input path="umbral" id="umbral" class="form-control" value="70"  />
	<br>
	
			
	<input type="submit"  onclick="return validacion();" value="Guardar Nuevo Ex�men"/>
	
    
</form:form>

<!-- Footer -->	     

	                <div class="footer">
	                    <center><p><h6>Copyright &copy; Proyecto Colmena 2018</h6></p></center>
	                </div> 
</body>
</html>