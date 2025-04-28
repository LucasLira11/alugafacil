<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.cefet.alugafacil.dao.BancoFake" %>
<%@ page import="com.cefet.alugafacil.modelo.Aluguel" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Listagem Completa de Aluguéis</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>

<h1>Listagem Completa de Aluguéis</h1>

<table border="1" style="width: 100%; text-align: center;">
    <tr>
        <th>Nome</th>
        <th>CPF</th>
        <th>Telefone</th>
        <th>Endereço Imóvel</th>
        <th>Tipo</th>
        <th>Valor Aluguel</th>
        <th>Data de Pagamento</th>
        <th>Visualizar</th>
    </tr>

    <c:forEach var="al" items="<%= BancoFake.alugueis %>" varStatus="status">
        <tr>
            <td>${al.inquilino.nome}</td>
            <td>${al.inquilino.cpf}</td>
            <td>${al.inquilino.telefone}</td>
            <td>${al.imovel.endereco}</td>
            <td>${al.imovel.tipo}</td>
            <td>R$ ${al.valorAluguel}</td>
            <td>${al.dataPagamentoFormatada}</td>
            <td>
                <form action="${pageContext.request.contextPath}/views/visualizarDocumento.jsp" method="get" target="_blank">
                    <input type="hidden" name="nome" value="${al.inquilino.nome}">
                    <input type="hidden" name="cpf" value="${al.inquilino.cpf}">
                    <input type="hidden" name="telefone" value="${al.inquilino.telefone}">
                    <input type="hidden" name="endereco" value="${al.imovel.endereco}">
                    <input type="hidden" name="tipo" value="${al.imovel.tipo}">
                    <input type="hidden" name="valorAluguel" value="${al.valorAluguel}">
                    <input type="hidden" name="dataPagamento" value="${al.dataPagamentoFormatada}">
                    <input type="submit" value="Visualizar Documento">
                </form>
            </td>
        </tr>
    </c:forEach>

</table>
<form action="${pageContext.request.contextPath}/views/menu.jsp" style="margin-top: 20px;">
    <input type="submit" value="Voltar ao Menu Principal">
</body>
</html>
