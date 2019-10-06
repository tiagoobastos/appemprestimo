<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" 
			href="<c:url value="/resources/css/main.css" />" >
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Editar Livros</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col">
	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item" aria-current="page"><a href="<c:url value="/" />"  >Página Inicial</a></li>
	    <li class="breadcrumb-item" aria-current="page"><a href="<c:url value="/livros/list" />"  >Listagem de Livros</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Editar livro</li>
	  </ol>
	</nav>
	
	
   <h1>Editar Livro</h1>
   <form action="<c:url value="/livros/update" />" method="post">
   
          <input type="hidden" value="${livro.id}" name="id">
          <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Título</span>
		  </div>
		  <input type="text" class="form-control" value="${livro.titulo}" placeholder="Informe o título" aria-label="Username"  aria-describedby="basic-addon1" name="titulo" id="titulo">
	  </div>
      <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Gênero</span>
		  </div>
		  <input type="text" class="form-control" value="${livro.genero}" placeholder="Informe o gênero" aria-label="Genero"  aria-describedby="basic-addon1" name="genero" id="genero">
	  </div>
	  <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Autor</span>
		  </div>
		  <input type="text" class="form-control" value="${livro.autor}" placeholder="Informe o autor" aria-label="Autor"  aria-describedby="basic-addon1" name="autor" id="autor">
	  </div>
	  <div class="custom-control custom-checkbox">
		  <c:if test="${livro.emprestado eq false}">
		  	<input type = "checkbox" class="custom-control-input" id="chkemprestado" name="chkemprestado" onclick="atualizacampo(this)" />
		  	
		  </c:if>
		  <c:if test="${livro.emprestado eq true}">
		  	<input type = "checkbox" class="custom-control-input" id="chkemprestado" name="chkemprestado" checked="checked" onclick="atualizacampo(this)" />
		  </c:if>
		  <input type="hidden" class="form-control" value="${livro.emprestado}" aria-describedby="basic-addon1" name="emprestado" id="emprestado">
		  
	  	  <label class="custom-control-label" for="chkemprestado">Emprestado</label>
	  </div>      
      <br/>
		<input type="submit" value="Salvar">
      
   </form>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</div>
</div>
</div>
</body>


<script>
	function atualizacampo(c){
        if (c.checked) {
        	document.getElementById("emprestado").value = "true";
        } else {
        	document.getElementById("emprestado").value = "false";
        }
   }     
</script>    

</html>