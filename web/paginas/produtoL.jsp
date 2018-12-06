<%-- 
    Document   : produtoL
    Created on : 08/11/2018, 12:31:08
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<jsp:useBean id="dao" class="DAOs.DAOProduto"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listagem Produto</title>
        <link href="../css/Listas.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <nav class="nav">
                <ul class="nav-list">
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formulariocliente.jsp">Cadastro Cliente</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formularioproduto.jsp">Cadastro Produto</a>
                    </li>
                   <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formulariotipoproduto.jsp">Cadastro Tipo Produto</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/formularioempresa.jsp">Cadastro Empresa</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/cliente.jsp">Clientes</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/empresa.jsp">Empresas</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/produtoL.jsp">Produtos</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/tipoproduto.jsp">Tipos de Produto</a>
                    </li>
                    <li class="nav-list-item">
                        <a class="nav-link" href="http://localhost:8084/ProvaDW/paginas/paginaPrincipal.jsp">Menu</a>
                    </li>
                </ul>
            </nav>
       <table id="customers">
                <thead>
                <th>ID</th>
                <th>Imagem</th>
                <th>Nome</th>             
                <th>Preço</th>             
                <th>Descrição</th>             
                <th>Empresa</th>             
                <th>Tipo Produto</th>             
                </thead>
                <tbody>
                    <c:set var="resultadoLista" value="${dao.listInOrderId()}"/>
                    <c:forEach var="p" items="${resultadoLista}">
                        <tr> 
                            <td>${p.getIdProduto()}</td>
                            <td>${p.getImagemDoProduto()}</td>
                            <td>${p.getNomeDoProduto()}</td>
                            <td>${p.getPrecoProduto()}</td>
                            <td>${p.getDescricaoProduto()}</td>
                            <td>${p.getEmpresa().getNomeEmpresa()}</td>
                            <td>${p.getTipoProduto().getTipoProduto()}</td>
                        </tr>
                        </c:forEach>
                </tbody>

            </table>
    </body>
</html>
