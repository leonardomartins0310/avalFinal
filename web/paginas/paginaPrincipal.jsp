<%-- 
    Document   : paginaPrincipal
    Created on : 27/04/2018, 08:50:28
    Author     : a1712047
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
            <title>Feirão de Ofertas</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <header class="main-header">
            <i class="ancora" id="header"></i>
            <video class="video-header" src="./videos/copo_cerveja.mp4" autoplay muted loop ></video>
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
        </header>
        <section class="lugar section-background">
            <i class="ancora" id="lugar"></i>
            <div class="section-container">
                <h1 class="section-title">Produtos em destaque </h1>
                <img class="produtos-image" src="./images/oferta1.jpg"/>
                <img class="produtos-image" src="./images/oferta2.jpg"/>
                <img class="produtos-image" src="./images/oferta3.jpg"/>
                <img class="produtos-image" src="./images/oferta4.jpeg"/>

            </div>
        </section>
        <section class="drinks section-background">
            <i class="ancora" id="drinks"></i>
            <div class="section-container">
                <h1 class="section-title">Empresas em Destaque</h1>
                <a href="http://globoesporte.globo.com/"><img class="drinks-image" src="./images/carrefour.png"/> </a>
                <img class="drinks-image" src="./images/paodeacucar.png"/>
                <img class="drinks-image" src="./images/walmart.png"/>
                <img class="drinks-image" src="./images/carrefour.png"/>
                <img class="drinks-image" src="./images/paodeacucar.png"/>
                <img class="drinks-image" src="./images/walmart.png"/>
            </div>
        </section>
        <footer class="main-footer">
            <i class="ancora" id="footer"></i>
            <section class="footer-section">
                <h1>Contatos</h1>
                <p>(xx) xxxx-xxxx</p>
                <p>email@gmail.com<p>
            </section>
            <section class="footer-section">
                <h1>Endereco</h1>
                <p>Avenida Paulista</p>
                <p>Sao Paulo, SP<p>
            </section>
            <section class="footer-section">
                <h1>Funcionamento</h1>
                <p>Segunda a Sexta<br>
                    17:00 - 01:00 </p>
                <p>Sabados, Domingos e Feriados<br>
                    16:00 - 04:00 </p>
            </section>
        </footer>
    </body>
</html>
