<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Menu Principal</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>

<img src="${pageContext.request.contextPath}/images/logo.png" class="logo">

<h1>AlugaFácil - Sistema de Controle</h1>

<div class="menu-container">
    <div class="menu-card">

        <form action="${pageContext.request.contextPath}/views/registrarInquilino.jsp">
            <input type="submit" value="Cadastrar Inquilino">
        </form>

        <form action="${pageContext.request.contextPath}/views/registrarImovel.jsp">
            <input type="submit" value="Cadastrar Imóvel">
        </form>

        <form action="${pageContext.request.contextPath}/views/registrarAluguel.jsp">
            <input type="submit" value="Cadastrar Aluguel">
        </form>

        <form action="${pageContext.request.contextPath}/views/listarCadastros.jsp">
            <input type="submit" value="Listar Todos os Cadastros para gerar boleto">
        </form>

        <form action="${pageContext.request.contextPath}/views/listarDados.jsp">
            <input type="submit" value="Listar Todos os Dados">
        </form>

    </div>
</div>

</body>
</html>
