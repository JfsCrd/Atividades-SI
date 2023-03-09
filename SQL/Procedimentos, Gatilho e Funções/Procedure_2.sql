/*Procedure 2. Retornar lista de compras de um determinado cliente.*/

DELIMITER $
CREATE PROCEDURE compra_cliente(compras VARCHAR(100))
BEGIN
SELECT C.Compra_pk_compra
FROM cartao AS C 
INNER JOIN cliente as cl ON cl.pk_Cliente = C.fk_numero
WHERE cl.Nome = compras;
END $
DELIMITER ;


/* 
call compra_cliente(X);
*/ 