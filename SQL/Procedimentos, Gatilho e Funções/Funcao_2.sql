/*Função 2. Retornar a média de compras do cliente.*/

DELIMITER $
CREATE FUNCTION media_compras(codigo INT)
RETURNS float
BEGIN
DECLARE  media_compras FLOAT;
SET  media_compras = (
					SELECT AVG(Compra.valor)
					FROM Compra
					INNER JOIN cartao ON compra.pk_compra = cartao.pk_numero
					INNER JOIN cliente ON cliente.pk_cliente = cartao.fk_cliente
                    WHERE cliente.pk_Cliente = codigo
                    );
                    
RETURN  media_compras;

END $
DELIMITER ;

/*select media_compras(1) as "Media de Compras";*/