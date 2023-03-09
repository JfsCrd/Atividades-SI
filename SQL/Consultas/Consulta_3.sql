/*C. Retornar o nome do cliente e a soma das compras realizadas no ano de 
2019 do cliente mais antigo do Banco do Brasil.*/


SELECT nome AS "Cliente Mais Antigo", SUM(valor) AS "Soma Faturas 2019"
FROM cliente
INNER JOIN banco ON pk_banco = fk_BancoCliente
INNER JOIN filiacao ON pk_filiacao = fk_banco
INNER JOIN cartao ON pk_numero = fk_cliente
INNER JOIN fatura ON pk_fatura = fk_cartao
WHERE (fatura.ano = 2019 || 19) AND banco.banco = 'Banco do Brasil' AND (
	SELECT MIN(filiacao.Cliente_Desde) 
    FROM filiacao);
