/*D. Retornar o valor total das faturas de cada bandeira de cartões da 
Caixa Econômica de clientes de Monte Carmelo.*/

SELECT SUM(valor) AS "Valor Total", bandeira AS "Bandeira"
FROM fatura
INNER JOIN cartao ON pk_numero = fk_cartao
INNER JOIN banco ON pk_banco = fk_banco
INNER JOIN cliente ON pk_cliente = fk_cliente
INNER JOIN logadouro ON pk_logadouro = fk_logadouro
WHERE logadouro.cidade = 'Monte Carmelo' AND banco.banco = 'Caixa Economia' || 'Caixa Economia Federal'
GROUP BY cartao.bandeira;