package com.cefet.alugafacil.controller;

import java.io.IOException;

import com.cefet.alugafacil.dao.BancoFake;
import com.cefet.alugafacil.modelo.Imovel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registrarImovel")
public class ImovelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String endereco = request.getParameter("endereco");
        String tipo = request.getParameter("tipo");
        double valorAluguel = Double.parseDouble(request.getParameter("valorAluguel"));

        Imovel imovel = new Imovel();
        imovel.setEndereco(endereco);
        imovel.setTipo(tipo);
        imovel.setValorAluguel(valorAluguel);
        BancoFake.imoveis.add(imovel);

        request.setAttribute("imovel", imovel);

        request.getRequestDispatcher("/views/mostrarImovel.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/views/registrarImovel.jsp");
    }
}
