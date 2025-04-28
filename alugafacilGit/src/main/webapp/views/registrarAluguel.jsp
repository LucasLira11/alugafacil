<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page import="com.cefet.alugafacil.dao.BancoFake" %>
<%@ page import="com.cefet.alugafacil.modelo.Inquilino" %>
<%@ page import="com.cefet.alugafacil.modelo.Imovel" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Registrar Aluguel</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>
<h1>Registrar Aluguel</h1>

<form action="${pageContext.request.contextPath}/registrarAluguel" method="post">

    <label>Inquilino:</label>
    <select name="inquilinoId">
        <c:forEach var="inq" items="<%= BancoFake.inquilinos %>" varStatus="status">
            <option value="${status.index}">${inq.nome}</option>
        </c:forEach>
    </select><br><br>

    <label>Imóvel:</label>
    <select name="imovelId">
        <c:forEach var="imo" items="<%= BancoFake.imoveis %>" varStatus="status">
            <option value="${status.index}">${imo.endereco} - ${imo.tipo}</option>
        </c:forEach>
    </select><br><br>

    Valor do Aluguel: <input type="number" name="valorAluguel" step="0.01"><br><br>
    Multa (%): <input type="number" name="multaPorcentagem" step="0.01"><br><br>
    Juros ao dia (%): <input type="number" name="jurosPorDia" step="0.01"><br><br>
    Data de Vencimento: <input type="date" name="dataVencimento"><br><br>
    Data de Pagamento: <input type="date" name="dataPagamento"><br><br>

    <input type="submit" value="Registrar">
</form>

</body>
</html>
