/*2.b) Retornar a soma total das compras realizadas em 2018 no cartão Visa.*/

SELECT SUM(valor) AS "Soma Faturas 2018"
FROM fatura
INNER JOIN cartao ON pk_numero = fk_cartao
INNER JOIN cliente ON pk_cliente = fk_cliente
WHERE (fatura.ano = 2018 || 18) AND (cartao.bandeira = "VISA");
