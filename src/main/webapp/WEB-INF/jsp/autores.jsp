<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de autores</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
</head>
<body>
<div class="container">
<h2 class="text-center">Cadastro de Autor</h2>
	<form action="<c:url value="autores"/>" method="POST">
		<div class="form-group">
			<label for="nome">Nome</label>
			<input id="nome" class="form-control" name="nome">
		</div>
		<div class="form-group">
			<label for="email">e-mail</label>
			<input id="email" class="form-control" name="email">
		</div>
		<div class="form-group">
			<label for="dataNascimento">Data de nascimento</label>
			<input id="dataNascimento" class="form-control" name="dataNascimento">
		</div>
		<div class="form-group">
			<label for="miniCV">Mini Currículo</label>
			<input id="miniCV" class="form-control" name="miniCV">
		</div>
		
		<input type="submit" value="Gravar" class="mt-2 btn-primary">
	
	</form>
	</div>
	<div class="container">
	<h2 class="text-center">Lista de Autores</h2>
	
	
	<table class="table table-hover table-striped table-bordered">
		<thead>
			<tr>
				<th>NOME</th>
				<th>E-MAIL</th>
				<th>DATA NASCIMENTO</th>
				<th>MINI CURRICULO</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${autores}" var="a">
				<tr>
					<td>${a.nome}</td>
					<td>${a.email}</td>
					<td>${a.dataNascimento}</td>
					<td>${a.miniCV}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>