/*Gatilho 1. Adicionar 10 pontos de vantagem em cada compra.*/

DELIMITER $
CREATE TRIGGER atualiza AFTER INSERT ON Compra 
FOR EACH ROW 
BEGIN 
UPDATE pontos
SET pontos  = pontos + 10.00
WHERE Vantagem.pk = NEW.compras.Vantagem_pk;
END $
DELIMITER ;

