<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de livros</title>
</head>
<body>
   <div id="formulario">
	  <h2>Cadastrar Livro: </h2>
   <form action="servico">
		<label>Titulo: </label> <input type="text" name="titulo" value="${livro.titulo }"/><br/>
	    <label>Autor: </label> <input type="text" name="autor" value="${livro.autor }"/><br/>
		<label>Edição: </label> <input type="text" name="edicao" value="${livro.edicao }"/><br/>
		<label>Editora: </label> <input type="text" name="editora" value="${livro.editora }"/><br/>
		<label>Ano de Publicação: </label> <input type="text" name="publicacao" maxlength="4" value="<fmt:formatDate value='${livro.dataPub.time }' pattern='yyyy'/>"/><br/>
		<input type="hidden" name="comandos" value="AdicionarLivro">
		     <c:choose>
			 <c:when test="${not empty livro}">
			 <input type="hidden" name="id" value="${livro.id }">
			</c:when>
			</c:choose>
		<button type="submit">Adicionar Livro</button>
	</form>
	</div>
	
	<div id="busca">
		<h2>Buscar Livros:</h2>
		<form action="servico">
			<input type="text" name="titulo" placeholder="Título...">
			<input type = "hidden" value="BuscaLivro">
			<br><br><br>
			<button type="enviar">Pesquisar</button>
		</form>
		<br><br>
		
		<form action="servico">
    		<input type = "hidden" name="comandos" value="BuscaLivro">
    		<button type="submit" >Listar Todos</button>
		</form>
		
		<br>
	</div>
	
</body>
</html>