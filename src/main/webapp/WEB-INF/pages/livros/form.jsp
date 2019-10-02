<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    


<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />" >

<meta charset="UTF-8">
<title>Cadastrar novo livro...</title>
</head>
<body>
    
<div class="container">
<div class="row">
<div class="col">
	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item" aria-current="page"><a href="<c:url value="/" />"  >Página Inicial</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Cadastro de livros</li>
	  </ol>
	</nav>
   
   <h1>Cadastrar Livro</h1>
   
   <form action="<c:url value="/livros/add" />" method="post">
      
      <!--  
      <label for="tarefa">Título</label>
      <input type="text" name="titulo" id="titulo" size="80">
      
      <label for="tarefa">Gênero</label>
      <input type="text" name="genero" id="genero" size="80">
      
      <label for="tarefa">Autor</label>
      <input type="text" name="autor" id="autor" size="80">
      
      <label for="tarefa">Emprestado?</label>
      <input type="text" name="emprestado" id="emprestado" size="80">      
      <br/>
      -->
      <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Título</span>
		  </div>
		  <input type="text" class="form-control" placeholder="Informe o título" aria-label="Username"  aria-describedby="basic-addon1" name="titulo" id="titulo">
	  </div>
      <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Gênero</span>
		  </div>
		  <input type="text" class="form-control" placeholder="Informe o gênero" aria-label="Genero"  aria-describedby="basic-addon1" name="genero" id="genero">
	  </div>
	  <div class="input-group mb-3" > 
		  <div class="input-group-prepend">
		    <span class="input-group-text" id="basic-addon1">Autor</span>
		  </div>
		  <input type="text" class="form-control" placeholder="Informe o autor" aria-label="Autor"  aria-describedby="basic-addon1" name="autor" id="autor">
	  </div>
      <input class="btn btn-primary"  type="submit" value="Salvar">
           
      
      
   </form>
   
   
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</div>
</div>
</div>

</body>
</html>