use controle;
CREATE USER 'cliente'@'localhost' IDENTIFIED BY '123456';
GRANT SELECT ON Fatura TO 'cliente'@'localhost';

CREATE USER 'banco'@'localhost' IDENTIFIED BY '123456';
GRANT SELECT ON cliente TO 'banco'@'localhost';
GRANT SELECT ON banco TO 'banco'@'localhost';

CREATE USER 'adm'@'localhost' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON controle.* TO 'adm'@'localhost';
