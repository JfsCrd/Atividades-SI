/*Função 1. Retornar a quantidade de clientes homens*/

 DELIMITER $ 
 CREATE FUNCTION qtd_cliente(sexo CHAR)
 RETURNS int
 BEGIN DECLARE valor_mas INT; 
 SET valor_mas = (SELECT COUNT(*) FROM cliente WHERE cliente.Sexo = 'M' || cliente.sexo = 'm');
 RETURN valor_mas; 
 END $ 
 DELIMITER ;
  
 /*select qtd_cliente('M');*/
 

/*
Correção: substituir "M" no WHERE para 'Sexo', do parametro;
*/