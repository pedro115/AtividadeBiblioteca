<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Realizar emprestimo de livros</title>
</head>
<body>
    <form action="servico" id="formulario">
	
		<h2>Relizar Emprestimo:</h2>
	
		<label>Livro: </label> <input type="text" value="${param.titulo }" disabled="disabled"/><br/>
		<label>Aluno (mat.): </label> <input type="text" name="aluno" maxlength="14" /><br/>
		<input type="hidden" name="livro" value="${idLivro }">
		<input type="hidden" name="comandos" value="EmprestarLivro">
		<br/>
		<button type="submit">Confirmar Emprestimo</button>
		
	</form>
</body>
</html>