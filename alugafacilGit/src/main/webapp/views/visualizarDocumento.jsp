<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Documento Completo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body style="background-color: #f5f5f5; padding: 30px;">

<div style="background: white; padding: 20px; border-radius: 10px; box-shadow: 0 8px 16px rgba(0,0,0,0.1); max-width: 700px; margin: 0 auto;">
    <img src="${pageContext.request.contextPath}/images/logo.png" style="display: block; margin: 0 auto; width: 180px;">

    <h2 style="text-align: center;">Ficha de Cadastro Completo</h2>

    <p><strong>Nome:</strong> ${param.nome}</p>
    <p><strong>CPF:</strong> ${param.cpf}</p>
    <p><strong>Telefone:</strong> ${param.telefone}</p>

    <hr>

    <p><strong>Endereço do Imóvel:</strong> ${param.endereco}</p>
    <p><strong>Tipo do Imóvel:</strong> ${param.tipo}</p>
    <p><strong>Valor do Aluguel:</strong> R$ ${param.valorAluguel}</p>
    <p><strong>Data de Pagamento:</strong> ${param.dataPagamento}</p>

    <div style="text-align: center; margin-top: 30px;">
        <button onclick="window.print()" style="padding: 10px 20px; background-color: #138443; color: white; border: none; border-radius: 10px; font-size: 16px;">Imprimir Documento</button>
    </div>
</div>
<form action="${pageContext.request.contextPath}/views/menu.jsp" style="margin-top: 20px;">
    <input type="submit" value="Voltar ao Menu Principal">
</body>
</html>
