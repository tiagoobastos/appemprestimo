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
 
   <h2>Editar Livro</h2>
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
      <br/>
      
      <input type="submit" value="Salvar">
           
      
      
   </form>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>