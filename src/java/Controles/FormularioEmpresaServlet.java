/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controles;

import DAOs.DAOEmpresa;
import DAOs.DAOProduto;
import DAOs.DAOTipoproduto;
import Entidades.Empresa;
import Entidades.Produto;
import Entidades.Tipoproduto;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(name = "FormularioEmpresaServlet", urlPatterns = {"/FormularioEmpresaServlet"})
public class FormularioEmpresaServlet extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            System.out.println("sadasdas");
            DAOEmpresa daoEmpresa= new DAOEmpresa();
            String imagem=request.getParameter("logoEmpresa");
            String nome = request.getParameter("nomeEmpresa");
            String ramo = request.getParameter("ramoEmpresa");
            String endereco = request.getParameter("enderecoEmpresa");
            Date data = new Date();
            Empresa empresa= new Empresa();
            empresa.setNomeEmpresa(nome);
            empresa.setDataCadastroEmpresa(data);
            empresa.setEnderecoEmpresa(endereco);
            empresa.setLogoEmpresa(imagem);
            empresa.setRamoEmpresa(ramo);
            daoEmpresa.adicionar(empresa);
            response.sendRedirect(request.getContextPath() + "/paginas/empresa.jsp");
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
