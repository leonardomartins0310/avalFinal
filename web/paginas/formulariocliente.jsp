<%-- 
    Document   : formulariocliente
    Created on : 06/12/2018, 15:30:30
    Author     : a1712047
--%>

<%@page import="java.util.List"%>
<%@page import="DAOs.DAOTipoproduto"%>
<%@page import="Entidades.Tipoproduto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    DAOTipoproduto daoTipoProduto = new DAOTipoproduto();
    List<Tipoproduto> tipoproduto = daoTipoProduto.listInOrderId();
%>
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
        <form method="post" action="${pageContext.request.contextPath}/FormularioClienteServlet">
            <label> Nome <label/><input type="text" name="nomeCliente"/>
            <label> Email Cliente <label/><input type="text" name="emailCliente"/>
             <select class="form-control" name="preferenciaCliente">
 <%
                    for (Tipoproduto i : tipoproduto) {
                %>
                <option value="<%=i.getIdTipoProduto()%>"><%=i.getTipoProduto()%></option>
                <%}%>
            <input type="submit" name="ok"/>
        </form>
    </body>
</html>
