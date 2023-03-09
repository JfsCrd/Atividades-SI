/*Procedure 1. Inserir novo cliente já com logradouro e banco.*/

DELIMITER $
CREATE PROCEDURE cliente_total()
BEGIN
INSERT INTO Banco (pk_Banco,Banco) VALUES (1,'BRADESCO');
INSERT INTO Logadouro(pk_Logadouro,Endereco,Cidade,Estado,Pais) VALUES (1,'Rodoviaria','Monte Carmelo','Minas Gerais','Brasil');
INSERT INTO Cliente (pk_Cliente,Nome,Telefone,fk_logadouro) VALUES (1,'Jefferson Dias Cardoso','03484307811',1);
END $
DELIMITER ;


/* 
call cliente_total();
*/