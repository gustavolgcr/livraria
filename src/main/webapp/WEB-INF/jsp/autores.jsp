<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de autores</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We"
	crossorigin="anonymous">

</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top navbar-dark bg-dark">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" >AUTORES</a>
			</div>
		</div>
	</nav>



	<div class="container">
		<div class="mt-2 card">

			<div class="card-header">
				<h1 class="text-center">CADASTRO DE AUTOR</h1>
			</div>

			<div class="card-body">
				<form action="<c:url value="autores"/>" method="POST">
					<div class="form-group">
						<label for="nome">Nome</label> <input id="nome"
							class="form-control" name="nome">
					</div>
					<div class="form-group">
						<label for="email">Email</label> <input id="email"
							class="form-control" name="email">
					</div>
					<div class="form-group">
						<label for="dataNascimento">Data de nascimento</label> <input
							id="dataNascimento" class="form-control" name="dataNascimento">
					</div>
					<div class="form-group">
						<label for="miniCV">Mini Currículo</label>
						<!-- <input id="miniCV" class="form-control" > -->
						<textarea id="miniCV" class="form-control" rows="3" name="miniCV"></textarea>
					</div>

					<input type="submit" value="Cadastrar" class="mt-2 btn btn-primary">
				</form>
			</div>
		</div>

		<div class="mt-2 card">

			<div class="card-header">
				<h1 class="text-center">LISTA DE AUTORES</h1>
			</div>

			<div class="card-body">
				<table class="table table-hover table-striped table-bordered">
					<thead>
						<tr>
							<th>NOME</th>
							<th>E-MAIL</th>
							<th>DATA NASCIMENTO</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${autores}" var="a">
							<tr>
								<td>${a.nome}</td>
								<td>${a.email}</td>
								<td>${a.dataNascimento}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</div>
	</div>
</body>
</html>