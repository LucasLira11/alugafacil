<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
    <title>Registrar Imóvel</title>
</head>
<body>
    <h1>Registrar Imóvel</h1>
    <form action="${pageContext.request.contextPath}/registrarImovel" method="post">
        Endereço: <input type="text" name="endereco"><br><br>
        Tipo: <input type="text" name="tipo"><br><br>
        Valor do Aluguel: <input type="number" name="valorAluguel" step="0.01"><br><br>
        <input type="submit" value="Registrar">
    </form>
    <form action="${pageContext.request.contextPath}/views/menu.jsp">
        <input type="submit" value="Voltar ao Menu Principal">
    </form>    
</body>
</html>
