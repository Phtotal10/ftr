<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar - Produtos</title>
</head>
<body>
 <br>
     <br>
      <h1>Lista DE Produtos</h1>
     <br> 
     <br>
     <form name="buscarProduto" action="ProdutoController" method="GET">
     <table>
     <tr>
         <td>ID</td>
         <td><input type="hidden" name="acao" value="buscarPorId"/></td>
         <td><input type="text" name="id_pessoa" size="10"
         maxlength="10" /></td>
         <td><input type="submit" value="Buscar"/></td>
         </tr>


     </table>
     </form>
     
     <h1>Manter Produtos</h1>
     
     <form name="ListarProdutos" action="ProdutoController" method="get">
     <table style="width: 90%" "border=1">
     	<thead>
				<tr>
					<td>ID</td>
					<td>Nome</td>
					<td colspan="3">Ação</td>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${listaProdutos}" var="produto">
				<tr>
					<td><c:out value="${produto.id}"/></td>
					<td><c:out value="${produto.nome}"/></td>
					
					<td>
					<a href="ProdutoController?acao=atualizar&id_produto=<c:out value="${produto.id}"/>&nome=<c:out value="${produto.nome}"/> 
					&dataNascimento=<c:out value="${pessoa.dataNascimento }"/>">
					Alterar </a>
					</td>
					
					<td>
						<a href="ProdutoController?acao=remover&id_produto=<c:out value="${produto.id}"/>"
						onclick="return confirm('Confirmar a exclusão?')">
						Excluir
						</a>
					</td>
				</tr>
				
			</c:forEach>
			</tbody>
			
			<tfoot>
				<tr>
					<td colspan="5"><a href="ProdutoController?acao=criar">Incluir Novo Produto</a></td>
				</tr>
			</tfoot>
     </table>
     
     </form>
</body>
<p>
	<a href="../LojaWeb/index.html">VOLTAR MENU</a>
</p>

</body>
</html>