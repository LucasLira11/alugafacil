<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
    <title>Registrar Inquilino</title>
</head>
<body>
    <h1>Registrar Inquilino</h1>
    <form action="${pageContext.request.contextPath}/registrarInquilino" method="post">
        Nome: <input type="text" name="nome"><br><br>
        CPF: <input type="text" name="cpf"><br><br>
        Telefone: <input type="text" name="telefone"><br><br>
        <input type="submit" value="Registrar">
    </form>
    <form action="${pageContext.request.contextPath}/views/menu.jsp">
        <input type="submit" value="Voltar ao Menu Principal">
    </form>    
</body>
</html>
