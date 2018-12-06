/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controles;

import DAOs.DAOCliente;
import Entidades.Cliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
@WebServlet(name = "ClienteServlet", urlPatterns = {"/Cliente"})
public class ClienteServlet extends HttpServlet {

    Locale ptBr = new Locale("pt", "BR");
    NumberFormat formatoDinheiro = NumberFormat.getCurrencyInstance(ptBr);

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
        String nomeCliente = "";

        try (PrintWriter out = response.getWriter()) {
            nomeCliente = request.getParameter("Cliente");

            String resultado = "";
            if (nomeCliente == null || nomeCliente.equals("")) {
                resultado = listaClientesCadastrados();
            } else {
                resultado = listaClienteNome(nomeCliente);
            }
            request.getSession().setAttribute("resultado", resultado);
            response.sendRedirect(request.getContextPath() + "/paginas/Cliente.jsp");
        }
    }

    protected String listaClienteNome(String nomeCliente) {
        DAOCliente Cliente = new DAOCliente();
        String tabela = "";
        List<Cliente> lista = Cliente.listByNome(nomeCliente);
        for (Cliente l : lista) {
            tabela += "<tr>"
                    + "<td>" + l.getIdCliente()+ "</td>"
                    + "<td>" + l.getNomeCliente() + "</td>"
                    + "<td>" + l.getEmailCliente()+ "</td>"
                    + "<td>" + l.getTipoProduto().getTipoProduto()+ "</td>"
                    + "</tr>";
        }
        
        return tabela;
    }

    protected String listaClientesCadastrados() {
        DAOCliente Cliente = new DAOCliente();
        String tabela = "";
        List<Cliente> lista = Cliente.listInOrderNome();
        for (Cliente l : lista) {
            tabela += "<tr>"
                    + "<td>" + l.getIdCliente()+ "</td>"
                    + "<td>" + l.getNomeCliente() + "</td>"
                    + "<td>" + l.getEmailCliente()+ "</td>"
                    + "<td>" + l.getTipoProduto().getTipoProduto()+ "</td>"
                    + "</tr>";
        }

        return tabela;
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
        System.out.println("teste doget");
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
        System.out.println("teste dopost");
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
