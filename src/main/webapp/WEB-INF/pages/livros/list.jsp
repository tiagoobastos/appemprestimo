<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/main.css" />" >
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta charset="UTF-8">
<title>Listagem de Livros</title>
</head>

<body>

	<div class="container">
	<div class="row">
	<div class="col">
	<nav aria-label="breadcrumb">
	  <ol class="breadcrumb">
	    <li class="breadcrumb-item" aria-current="page"><a href="<c:url value="/" />"  >Página Inicial</a></li>
	    <li class="breadcrumb-item active" aria-current="page">Listagem de livros</li>
	  </ol>
	</nav>
	<h1>Listagem de Livros</h1>
	<h3><a href="<c:url value="/livros/form" />"  >Cadastar livro</a></h3>
	
	<table class="table" >
	   <thead class="table-dark">
		<tr>
			<th class="text-center">Título</th>
			<th class="text-center">Gênero</th>
			<th class="text-center">Autor</th>
			<th class="text-center">Disponível?</th>
			<th class="text-center">Ações</th>
		</tr>
	<thead>
	<tbody>
		<c:forEach var="livro" items="${listaLivros}" >
			<tr>
				<td align="center">${livro.titulo}    </td>
				<td align="center">${livro.genero}    </td>
				<td align="center">${livro.autor}     </td>
				<c:choose>
					<c:when test="${livro.emprestado eq false}">
						<td align="center"><img src="<c:url value="/resources/img/yes.png"/>"/></td>
					</c:when>
					<c:when test="${livro.emprestado eq true}">
						<td align="center"><img src="<c:url value="/resources/img/no.png"/>"/></td>
					</c:when>
				</c:choose>	
	             <td align="center">   
					<a href="<c:url value="/livros/edit/${livro.id}"   />" ><button type="button" class="btn btn-primary"  >Editar</button></a>
					<a href="<c:url value="/livros/delete/${livro.id}" />" ><button type="button" class="btn btn-danger"   >Excluir</button></a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</div>
</div>
</div>
</body>

</html>