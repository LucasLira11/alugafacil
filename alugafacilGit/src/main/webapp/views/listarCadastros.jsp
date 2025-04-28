<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.cefet.alugafacil.dao.BancoFake" %>
<%@ page import="com.cefet.alugafacil.modelo.Inquilino" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Listagem Geral</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>

<h1>Inquilinos Cadastrados</h1>

<table border="1">
    <tr>
        <th>Nome</th>
        <th>CPF</th>
        <th>Telefone</th>
        <th>Gerar Boleto</th>
    </tr>
    <c:forEach var="inq" items="<%= BancoFake.inquilinos %>">
        <tr>
            <td>${inq.nome}</td>
            <td>${inq.cpf}</td>
            <td>${inq.telefone}</td>
            <td>
                <form action="${pageContext.request.contextPath}/views/gerarBoleto.jsp" method="get" target="_blank">
                    <input type="hidden" name="nome" value="${inq.nome}">
                    <input type="hidden" name="cpf" value="${inq.cpf}">
                    <input type="hidden" name="telefone" value="${inq.telefone}">
                    <input type="submit" value="Gerar Boleto">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>
<form action="${pageContext.request.contextPath}/views/menu.jsp" style="margin-top: 20px;">
    <input type="submit" value="Voltar ao Menu Principal">
</form>  
</body>
</html>