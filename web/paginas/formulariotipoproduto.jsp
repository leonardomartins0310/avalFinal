<%-- 
    Document   : produto2
    Created on : 30/05/2018, 09:56:00
    Author     : Jaque
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/Cadastros.css" rel="stylesheet" type="text/css"/>
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
        <form  method="post" action="${pageContext.request.contextPath}/FormularioTipoProdutoServlet">
            <label> Tipo de Produto <label/><input type="text" name="tipoProduto"/>
            <input type="submit" name="ok"/>
        </form>
    </body>
</html>
