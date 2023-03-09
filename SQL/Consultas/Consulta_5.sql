/*E. Retornar o nome dos clientes que não compraram nada no mês de junho 
de 2019 em cartões do Banco do Brasil.*/

use controle;

SELECT Nome AS Cliente
FROM cliente
INNER JOIN banco ON pk_banco = fk_BancoCliente
INNER JOIN cartao ON pk_numero = fk_cliente
INNER JOIN fatura ON pk_fatura = fk_cartao
WHERE fatura.mes != 06 AND fatura.ano !=2019 || 19 AND banco.banco = 'Banco do Brasil'
GROUP BY nome;