use controle;

DELIMITER $
CREATE TRIGGER atualiza AFTER INSERT ON Compra 
FOR EACH ROW 
BEGIN 
UPDATE pontos
SET pontos  = pontos + 10.00
WHERE Vantagem.pk = NEW.compras.Vantagem_pk;
END $
DELIMITER ;

commit;