package com.cefet.alugafacil.dao;

import java.util.ArrayList;
import java.util.List;

import com.cefet.alugafacil.modelo.Aluguel;
import com.cefet.alugafacil.modelo.Imovel;
import com.cefet.alugafacil.modelo.Inquilino;

public class BancoFake {
    public static List<Inquilino> inquilinos = new ArrayList<>();
    public static List<Imovel> imoveis = new ArrayList<>();
    public static List<Aluguel> alugueis = new ArrayList<>();
}
