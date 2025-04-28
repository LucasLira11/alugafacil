package com.cefet.alugafacil.modelo;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class Aluguel {
    private int id;
    private LocalDate dataVencimento;
    private LocalDate dataPagamento;
    private double valorAluguel;
    private double multaPorcentagem;
    private double jurosPorDia;
    private Inquilino inquilino;
    private Imovel imovel;

    public Aluguel() {
    }

    public Aluguel(int id, LocalDate dataVencimento, LocalDate dataPagamento, double valorAluguel, double multaPorcentagem, double jurosPorDia, Inquilino inquilino, Imovel imovel) {
        this.id = id;
        this.dataVencimento = dataVencimento;
        this.dataPagamento = dataPagamento;
        this.valorAluguel = valorAluguel;
        this.multaPorcentagem = multaPorcentagem;
        this.jurosPorDia = jurosPorDia;
        this.inquilino = inquilino;
        this.imovel = imovel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getDataVencimento() {
        return dataVencimento;
    }

    public void setDataVencimento(LocalDate dataVencimento) {
        this.dataVencimento = dataVencimento;
    }

    public LocalDate getDataPagamento() {
        return dataPagamento;
    }

    public void setDataPagamento(LocalDate dataPagamento) {
        this.dataPagamento = dataPagamento;
    }

    public double getValorAluguel() {
        return valorAluguel;
    }

    public void setValorAluguel(double valorAluguel) {
        this.valorAluguel = valorAluguel;
    }

    public double getMultaPorcentagem() {
        return multaPorcentagem;
    }

    public void setMultaPorcentagem(double multaPorcentagem) {
        this.multaPorcentagem = multaPorcentagem;
    }

    public double getJurosPorDia() {
        return jurosPorDia;
    }

    public void setJurosPorDia(double jurosPorDia) {
        this.jurosPorDia = jurosPorDia;
    }

    public Inquilino getInquilino() {
        return inquilino;
    }

    public void setInquilino(Inquilino inquilino) {
        this.inquilino = inquilino;
    }

    public Imovel getImovel() {
        return imovel;
    }

    public void setImovel(Imovel imovel) {
        this.imovel = imovel;
    }

    public double calcularValorFinal() {
        if (dataPagamento == null || dataVencimento == null) {
            return valorAluguel;
        }
        long diasAtraso = ChronoUnit.DAYS.between(dataVencimento, dataPagamento);
        if (diasAtraso <= 0) {
            return valorAluguel;
        }
        double multa = valorAluguel * (multaPorcentagem / 100);
        double juros = valorAluguel * (jurosPorDia / 100) * diasAtraso;
        return valorAluguel + multa + juros;
    }

    public String getValorFinalFormatado() {
        return String.format("%.2f", calcularValorFinal());
    }

    public String getDataVencimentoFormatada() {
        if (dataVencimento != null) {
            return dataVencimento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        }
        return "";
    }

    public String getDataPagamentoFormatada() {
        if (dataPagamento != null) {
            return dataPagamento.format(DateTimeFormatter.ofPattern("dd/MM/yyyy"));
        }
        return "";
    }
}
