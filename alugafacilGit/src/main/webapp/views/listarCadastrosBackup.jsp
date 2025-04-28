<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.cefet.alugafacil.dao.BancoFake" %>
<%@ page import="com.cefet.alugafacil.modelo.Inquilino" %>
<%@ page import="com.cefet.alugafacil.modelo.Imovel" %>
<%@ page import="com.cefet.alugafacil.modelo.Aluguel" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
    <title>Listagem Geral</title>
</head>
<body>

<h1>Inquilinos Cadastrados</h1>
<table border="1">
    <tr>
        <th>Nome</th>
        <th>CPF</th>
        <th>Telefone</th>
    </tr>
    <c:forEach var="inq" items="<%= BancoFake.inquilinos %>">
        <tr>
            <td>${inq.nome}</td>
            <td>${inq.cpf}</td>
            <td>${inq.telefone}</td>
        </tr>
    </c:forEach>
</table>

<h1>Imóveis Cadastrados</h1>
<table border="1">
    <tr>
        <th>Endereço</th>
        <th>Tipo</th>
        <th>Valor Aluguel</th>
    </tr>
    <c:forEach var="imo" items="<%= BancoFake.imoveis %>">
        <tr>
            <td>${imo.endereco}</td>
            <td>${imo.tipo}</td>
            <td>R$ ${imo.valorAluguel}</td>
        </tr>
    </c:forEach>
</table>

<h1>Aluguéis Cadastrados</h1>
<table border="1">
    <tr>
        <th>Valor Original</th>
        <th>Data Vencimento</th>
        <th>Data Pagamento</th>
        <th>Valor Final</th>
    </tr>
    <c:forEach var="al" items="<%= BancoFake.alugueis %>">
        <tr>
            <td>R$ ${al.valorAluguel}</td>
            <td>${aluguel.dataVencimentoFormatada}</td>
            <td>${aluguel.dataVencimentoFormatada}</td>
            <td>R$ ${String.format("%.2f", al.calcularValorFinal())}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
