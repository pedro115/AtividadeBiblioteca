<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Alunos</title>
</head>
<body>
<form action="servico" id="formulario">
	
		<h2>Adicionar aluno:</h2>
	
		<label>CPF </label> <input type="text" name="cpf" maxlength="11" value="${aluno.cpf }"/><br/>
		<label>Nome: </label> <input type="text" name="nome" value="${aluno.nome }" /><br/>
		<label>Matricula: </label> <input type="text" name="matricula" maxlength="14" value="${aluno.matricula }"/><br/>
		<label>Endereço: </label> <input type="text" name="endereco" value="${aluno.endereco }"/><br/>
		<label>Data de Nascimento: </label> <input type="text" name="dataNascimento" value="<fmt:formatDate value='${aluno.dataNascimento.time }' pattern='dd/MM/yyyy'/>" /><br/>
		<br/>
		<input type="hidden" name="comandos" value="AdicionarAluno">
		<c:choose>
			<c:when test="${not empty aluno}">
				<input type="hidden" name="id" value="${aluno.id }">
			</c:when>
		</c:choose>
		<button type="submit">Adicionar Aluno</button>
	</form>
	<br/>
	<form action="servico">
		<input type="hidden" name="comandos" value="BuscaAluno">
		<button type="submit">Listar Todos</button>
		
	</form>
	<form action="servico">
		<input type="hidden" name="comandos" value="GerarRelatorios">
		<button type="submit">Relatorios</button>
		
	</form>
</body>
</html>