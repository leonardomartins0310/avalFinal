/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editorn.
 */
package Controles;

import DAOs.DAOEmpresa;
import DAOs.DAOProduto;
import DAOs.DAOTipoproduto;
import Entidades.Produto;
import Entidades.Empresa;
import Entidades.Tipoproduto;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author a1712047
 */
@WebServlet(name = "FormularioProdutoServlet", urlPatterns = {"/FormularioProdutoServlet"})
public class FormularioProdutoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            DAOProduto daoProduto= new DAOProduto();
            DAOEmpresa daoEmpresa= new DAOEmpresa();
            DAOTipoproduto daoTipoProduto= new DAOTipoproduto();
            String imagem=request.getParameter("imagemProduto");
            String nome = request.getParameter("nomeProduto");
            String desc = request.getParameter("descProduto");
            Double preco = Double.parseDouble(request.getParameter("precoProduto"));
            int empresaId = Integer.parseInt(request.getParameter("empresaProduto"));
            int tipoProdutoId = Integer.parseInt(request.getParameter("produtoTipoProduto"));
            Empresa empresa= daoEmpresa.obter(empresaId);
            Tipoproduto tipo= daoTipoProduto.obter(tipoProdutoId);
            Produto prod= new Produto();
            prod.setNomeDoProduto(nome);
            prod.setDescricaoProduto(desc);
            prod.setPrecoProduto(preco);
            prod.setImagemDoProduto(imagem);
            prod.setEmpresa(empresa);
            prod.setTipoProduto(tipo);
            daoProduto.adicionar(prod);
            response.sendRedirect(request.getContextPath() + "/paginas/produtoL.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
