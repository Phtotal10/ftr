<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Manter Produtos</h1>
	<form name="manterProduto" action="ProdutoController" method="POST">
	<table>
		<tr>
			<td>Id</td>
			<td><input type="text" readonly="readonly" name="id_produto" size="10" maxlength="10"
			value="<c:out value="${produto.id}"/>"/></td>
		</tr>
	
		<tr>
			<td>Nome</td>
			<td><input type="text" name="nome" size="50" maxlength="250"
			value="<c:out value="${produto.nome}"/>" /></td>
		</tr>		
		
		
		<tr>
			<td><input type="submit" value="Salvar" /></td>
			<td><input type="button" value="Voltar"
			onclick="history.go(-1)"
			 /></td>
		</tr>
		</table>
	</form>
</body>
</html>