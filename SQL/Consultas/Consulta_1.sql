/*1. Retornar a quantidade total de compras realizadas por clientes que 
residem no estado de Minas Gerais.*/

SELECT COUNT(pk_compra) AS "Total de Compras"
FROM compra
INNER JOIN cartao ON fk_numero = pk_numero
INNER JOIN cliente ON pk_cliente = fk_cliente
INNER JOIN logadouro ON pk_logadouro = fk_logadouro
WHERE logadouro.estado = 'Minas Gerais' || 'MG';
