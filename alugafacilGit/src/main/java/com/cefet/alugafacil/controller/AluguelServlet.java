package com.cefet.alugafacil.controller;

import java.io.IOException;
import java.time.LocalDate;

import com.cefet.alugafacil.dao.BancoFake;
import com.cefet.alugafacil.modelo.Aluguel;
import com.cefet.alugafacil.modelo.Imovel;
import com.cefet.alugafacil.modelo.Inquilino;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/registrarAluguel")
public class AluguelServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        double valorAluguel = Double.parseDouble(request.getParameter("valorAluguel"));
        double multaPorcentagem = Double.parseDouble(request.getParameter("multaPorcentagem"));
        double jurosPorDia = Double.parseDouble(request.getParameter("jurosPorDia"));
        LocalDate dataVencimento = LocalDate.parse(request.getParameter("dataVencimento"));
        LocalDate dataPagamento = LocalDate.parse(request.getParameter("dataPagamento"));

        int inquilinoId = Integer.parseInt(request.getParameter("inquilinoId"));
        int imovelId = Integer.parseInt(request.getParameter("imovelId"));

        Inquilino inquilino = BancoFake.inquilinos.get(inquilinoId);
        Imovel imovel = BancoFake.imoveis.get(imovelId);

        Aluguel aluguel = new Aluguel();
        aluguel.setValorAluguel(valorAluguel);
        aluguel.setMultaPorcentagem(multaPorcentagem);
        aluguel.setJurosPorDia(jurosPorDia);
        aluguel.setDataVencimento(dataVencimento);
        aluguel.setDataPagamento(dataPagamento);
        aluguel.setInquilino(inquilino);
        aluguel.setImovel(imovel);

        BancoFake.alugueis.add(aluguel);

        request.setAttribute("aluguel", aluguel);
        request.getRequestDispatcher("/views/mostrarAluguel.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect(request.getContextPath() + "/views/registrarAluguel.jsp");
    }
}
