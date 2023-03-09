use controle;
insert into banco(pk_banco,banco) values (1, 'Banco do Brasil');
insert into banco(pk_banco,banco) values (2, 'Bradesco');
insert into banco(pk_banco,banco) values (3, 'Caixa Economica');

insert into filiacao( pk_filiacao,cliente_desde,fk_banco) values (10,02/03/2019,1);
insert into filiacao( pk_filiacao,cliente_desde,fk_banco) values (20,10/05/2015,3);
insert into filiacao( pk_filiacao,cliente_desde,fk_banco) values (30,10/10/2019,2);

insert into logadouro(pk_logadouro,endereco,cidade,estado,pais) values (1,'Joao Teodoro Borges 590','Monte Carmelo','Minas Gerais','Brasil');
insert into logadouro(pk_logadouro,endereco,cidade,estado,pais) values (2,'Aparecida','Uberlandia','Minas Gerais','Brasil');
insert into logadouro(pk_logadouro,endereco,cidade,estado,pais) values (3,'Verao do Cometa','Itaquera','São Paulo','Brasil');

Insert into cliente(pk_Cliente,Nome,Telefone,fk_Logadouro,fk_BancoCliente) values (1,'Lazara Aparecida de Jesus',99877078,1,2);
Insert into cliente(pk_Cliente,Nome,Telefone,fk_Logadouro,fk_BancoCliente) values (2,'Jefferson Dias Cardoso',999870000,2,3);
Insert into cliente(pk_Cliente,Nome,Telefone,fk_Logadouro,fk_BancoCliente) values (3,'Thais Almeida',999977078,3,1);

insert into cartao(pk_numero,bandeira,fk_cliente,fk_banco) values (1,'Visa',1,1);
insert into cartao(pk_numero,bandeira,fk_cliente,fk_banco) values (2,'Mastecard',2,2);
insert into cartao(pk_numero,bandeira,fk_cliente,fk_banco) values (3,'Elo',3,3);

insert into vantagem(pk_vantagem,pontos) values (1,10);
insert into vantagem(pk_vantagem,pontos) values (2,10);
insert into vantagem(pk_vantagem,pontos) values (3,50);

insert into fatura(pk_fatura,valor,mes,ano,fk_cartao) values (1,50.00,07,2019,1);
insert into fatura(pk_fatura,valor,mes,ano,fk_cartao) values (2,80.00,06,2019,2);
insert into fatura(pk_fatura,valor,mes,ano,fk_cartao) values (3,90.00,07,2019,3);


insert into compra(pk_compra,valor,dataf,fk_numero,fk_vantagem,fk_fatura) values (1,99.00,11/05/2019,1,1,1);
insert into compra(pk_compra,valor,dataf,fk_numero,fk_vantagem,fk_fatura) values (2,39.00,20/05/2019,2,2,3);
insert into compra(pk_compra,valor,dataf,fk_numero,fk_vantagem,fk_fatura) values (3,45.00,30/05/2019,3,3,3);

