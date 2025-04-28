package com.cefet.alugafacil.controller;

import java.io.IOException;

import com.cefet.alugafacil.dao.BancoFake;
import com.cefet.alugafacil.modelo.Inquilino;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registrarInquilino")
public class InquilinoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");

        Inquilino inquilino = new Inquilino();
        inquilino.setNome(nome);
        inquilino.setCpf(cpf);
        inquilino.setTelefone(telefone);
        BancoFake.inquilinos.add(inquilino);

        request.setAttribute("inquilino", inquilino);

        request.getRequestDispatcher("/views/mostrarInquilino.jsp")
               .forward(request, response);
    }

@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    response.sendRedirect("views/registrarInquilino.jsp");
    }

}