<%-- 
    Document   : formularioproduto
    Created on : 08/11/2018, 11:20:10
    Author     : Asus
--%>
<%@page import="Entidades.Tipoproduto"%>
<%@page import="DAOs.DAOTipoproduto"%>
<%@page import="Entidades.Empresa"%>
<%@page import="java.util.List"%>
<%@page import="DAOs.DAOEmpresa"%>
<%
    DAOEmpresa daoEmpresa = new DAOEmpresa();
    List<Empresa> empresa = daoEmpresa.listInOrderId();

    DAOTipoproduto daoTipoProduto = new DAOTipoproduto();
    List<Tipoproduto> tipoproduto = daoTipoProduto.listInOrderId();
%>

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
        <form method="post" action="${pageContext.request.contextPath}/FormularioProdutoServlet">
            <label> Imagem <label/><input type="text" name="imagemProduto"/>
            <label> Nome <label/><input type="text" name="nomeProduto"/>
            <label> Descricao <label/><input type="text" name="descProduto"/>
            <label> Preco <label/><input type="text" name="precoProduto"/>

                <label> Empresa <label/>
               <select class="form-control" name="empresaProduto">
 <%
                    for (Empresa i : empresa) {
                %>
                <option value="<%=i.getIdEmpresa()%>"><%=i.getNomeEmpresa()%></option>
                <%}%>
               
                </select>
                <label> Tipo de Produto <label/>
                <select class="form-control" name="produtoTipoProduto">
                 <%
                    for (Tipoproduto i : tipoproduto) {
                %>
                <option name="produtoTipoProduto" value="<%=i.getIdTipoProduto()%>"><%=i.getTipoProduto()%></option>
                <%}%>
               
                </select>
            <input type="submit" name="ok"/>
        </form>
    </body>
                    </html>

