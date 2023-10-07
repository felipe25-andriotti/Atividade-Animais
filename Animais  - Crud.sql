DROP TABLE IF EXISTS ANIMAIS;


CREATE TABLE ANIMAIS(
id int,
nome VARCHAR(50),
Data_nascimento DATE,
peso DECIMAL(5,2),
cor VARCHAR(50)
);

 /*TRATANDO O ERRO*/
SET SQL_SAFE_UPDATES = 0;

insert into ANIMAIS VALUES (01, 'Ágata', DATE '2015-04-09',13.9, 'BRANCO');
insert into ANIMAIS VALUES (02, 'Félix', DATE '2016-06-06',14.3, 'PRETO');
insert into ANIMAIS VALUES (03, 'Tom', DATE '2013-02-08',11.2, 'AZUL');
insert into ANIMAIS VALUES (04, 'Garfield', DATE '2015-07-06', 20.1 , 'LARANJA');
insert into ANIMAIS VALUES (05, 'Frajola', DATE '2013-08-01',13.7, 'PRETO');
insert into ANIMAIS VALUES (06, 'Pateta', DATE '2012-02-03',12.3, 'PRETO');
insert into ANIMAIS VALUES (07, 'Snowball', DATE '2014-04-06',250, 'PRETO');
insert into ANIMAIS VALUES (10, 'Cody', DATE '2015-08-03',11.9, 'AZUL');
insert into ANIMAIS VALUES (11, 'Gato de Botas', DATE '2012-12-10',11.6, 'AMARELO');
insert into ANIMAIS VALUES (12, 'Kitty', DATE '2020-04-06',201, 'AMARELO');
insert into ANIMAIS VALUES (13, 'Milu', DATE '2013-02-04',17.9, 'BRANCO');
insert into ANIMAIS VALUES (14, 'Pluto', DATE '2012-01-03',12.3, 'AMARELO');
insert into ANIMAIS VALUES (15, 'Pateta', DATE '2015-05-01',17.7, 'PRETO');
insert into ANIMAIS VALUES (16, 'Snnopy', DATE '2013-07-02',18.2, 'BRANCO');
insert into ANIMAIS VALUES (17, 'Rex', DATE '2019-11-03',209, 'BEJE');
insert into ANIMAIS VALUES (20, 'Bidu', DATE '2012-09-08',12.4, 'AZUL');
insert into ANIMAIS VALUES (21, 'Dum Dum', DATE '2015-04-06',11.2, 'LARANJA');
insert into ANIMAIS VALUES (22, 'Muttley', DATE '2011-02-03',14.3, 'LARANJA');
insert into ANIMAIS VALUES (23, 'Scooby', DATE '2012-01-02',19.9, 'MARROM');
insert into ANIMAIS VALUES (24, 'Rufus', DATE '2014-04-05',19.7, 'BRANCO');
insert into ANIMAIS VALUES (25, 'Cawl', DATE '2021-08-19',19.7, 'BRANCO');

/*ADICIONANDO NOVA COLUNA 'ESPECIE'*/
ALTER TABLE ANIMAIS ADD especie VARCHAR(20);

/*ADICIONANDO VALORES A NOVA COLUNA 'ESPECIE'*/
UPDATE ANIMAIS SET especie = 'Calopsita' WHERE id = 1;
UPDATE ANIMAIS SET especie = 'Gato' WHERE id >= 2 AND id <= 14;
UPDATE ANIMAIS SET especie = 'Cachorro' WHERE id >14 AND id <= 25;

/*FAZENDO TÓPICO 1, 2 E 3*/
UPDATE ANIMAIS SET nome = 'Goofy' WHERE id = 6;
UPDATE ANIMAIS SET peso = 10.0 WHERE  id = 4;
UPDATE ANIMAIS SET cor = 'laranja'WHERE especie = 'Gato';

/*CRIANDO COLUNA ALTURA*/
ALTER TABLE ANIMAIS ADD altura DECIMAL(5,2);

/* Adicionando uma nova coluna chamada 'observacao' à tabela ANIMAIS com tipo VARCHAR(3) */
ALTER TABLE ANIMAIS ADD observacao VARCHAR(3);

/*ADICIONANDO VALORES A NOVA COLUNA 'ALTURA'*/
UPDATE ANIMAIS SET altura = 0.30 WHERE id = 1;
UPDATE ANIMAIS SET altura = 0.28 WHERE id = 2;
UPDATE ANIMAIS SET altura = 0.25 WHERE id = 3;
UPDATE ANIMAIS SET altura = 0.29 WHERE id = 4;
UPDATE ANIMAIS SET altura = 0.27 WHERE id = 5;
UPDATE ANIMAIS SET altura = 0.30 WHERE id = 6;
UPDATE ANIMAIS SET altura = 0.26 WHERE id = 7;
UPDATE ANIMAIS SET altura = 0.25 WHERE id = 10;
UPDATE ANIMAIS SET altura = 0.26 WHERE id = 11;
UPDATE ANIMAIS SET altura = 0.24 WHERE id = 12;
UPDATE ANIMAIS SET altura = 0.28 WHERE id = 13;
UPDATE ANIMAIS SET altura = 0.26 WHERE id = 14;
UPDATE ANIMAIS SET altura = 0.32 WHERE id = 15;
UPDATE ANIMAIS SET altura = 0.33 WHERE id = 16;
UPDATE ANIMAIS SET altura = 0.35 WHERE id = 17;
UPDATE ANIMAIS SET altura = 0.30 WHERE id = 20;
UPDATE ANIMAIS SET altura = 0.28 WHERE id = 21;
UPDATE ANIMAIS SET altura = 0.31 WHERE id = 22;
UPDATE ANIMAIS SET altura = 0.36 WHERE id = 23;
UPDATE ANIMAIS SET altura = 0.34 WHERE id = 24;
UPDATE ANIMAIS SET altura = 0.35 WHERE id = 25;

/*DELETANDO - TÓPICO  7,8 E 9 DA ATIVIDADE*/
DELETE FROM ANIMAIS WHERE peso > 200;
DELETE FROM ANIMAIS WHERE nome LIKE 'C%';

/*Dropando coluna 'Cor'*/
ALTER TABLE ANIMAIS DROP COLUMN cor;

/*Aumentando a quantidade de caracteres da coluna 'nome'*/
ALTER TABLE ANIMAIS MODIFY COLUMN nome VARCHAR(80);

/*Deletando todos  animais da espécie  'Gato' e 'Cachorro'*/
DELETE FROM ANIMAIS WHERE especie = 'Gato' OR especie = 'Cachorro';

/*Dropando coluna 'data de nascimento'*/
ALTER TABLE ANIMAIS DROP COLUMN Data_nascimento;

/*Removendo todos os animais*/
DELETE FROM ANIMAIS;

/*Removendo tabela especie*/
ALTER TABLE ANIMAIS DROP COLUMN especie;

SELECT * FROM ANIMAIS;


