<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Dados do Aluguel Registrado</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/estilo.css">
</head>
<body>

<h1>Dados do Aluguel Registrado</h1>

<div style="background: white; padding: 20px; border-radius: 10px; box-shadow: 0 8px 16px rgba(0,0,0,0.1); max-width: 800px; margin: 0 auto;">

    <h2>Dados do Inquilino</h2>
    <p><strong>Nome:</strong> ${aluguel.inquilino.nome}</p>
    <p><strong>CPF:</strong> ${aluguel.inquilino.cpf}</p>
    <p><strong>Telefone:</strong> ${aluguel.inquilino.telefone}</p>

    <h2>Dados do Imóvel</h2>
    <p><strong>Endereço:</strong> ${aluguel.imovel.endereco}</p>
    <p><strong>Tipo:</strong> ${aluguel.imovel.tipo}</p>
    <p><strong>Valor do Imóvel:</strong> R$ ${aluguel.imovel.valorAluguel}</p>

    <h2>Dados do Aluguel</h2>
    <p><strong>Valor do Aluguel:</strong> R$ ${aluguel.valorAluguel}</p>
    <p><strong>Data de Vencimento:</strong> ${aluguel.dataVencimentoFormatada}</p>
    <p><strong>Data de Pagamento:</strong> ${aluguel.dataPagamentoFormatada}</p>
    <p><strong>Multa (%):</strong> ${aluguel.multaPorcentagem}%</p>
    <p><strong>Juros ao dia (%):</strong> ${aluguel.jurosPorDia}%</p>
    <p><strong>Valor Final (com Multa e Juros):</strong> R$ ${aluguel.valorFinalFormatado}</p>

    <div style="text-align: center; margin-top: 30px;">
        <form action="${pageContext.request.contextPath}/views/menu.jsp">
            <input type="submit" value="Voltar ao Menu Principal">
        </form>
    </div>

</div>

</body>
</html>
