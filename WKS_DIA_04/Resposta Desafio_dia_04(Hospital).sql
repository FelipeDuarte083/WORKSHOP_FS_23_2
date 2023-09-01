CREATE DATABASE hospital;
USE hospital;


-- 1)Criando as tabelas 
CREATE TABLE medico(
    crm VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
    sexo CHAR,
    idade INT
);

CREATE TABLE paciente(
	cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
	sexo CHAR,
    idade INT

);

CREATE TABLE remedio(
	nome VARCHAR(100),
    id VARCHAR(10) PRIMARY KEY,
    quantidade INT
);


-- 2) Adicionando uma coluna em cada tabela.
ALTER TABLE medico ADD COLUMN telefone VARCHAR(14);

ALTER TABLE paciente ADD COLUMN telefone VARCHAR(14);

ALTER TABLE remedio ADD COLUMN validade DATE;


-- 3) Questão. Inserindo dados nas tabelas
INSERT INTO medico 
(crm, nome, sexo, idade, telefone)
VALUES
('444.222.333-76', 'Rosa Maria', 'F', 52,'(83)99999-4535'),
('555.222.333-76', 'Maria Eduarda', 'F', 38,'(83)98888-4534'),
('666.222.333-76', 'Gustavo da Silva', 'M', 48,'(83)97777-1234'),
('777.222.333-76', 'Felipe Duarte', 'M', 57,'(83)95555-7876');

INSERT INTO paciente
(cpf, nome, sexo, idade, telefone)
VALUES
('111.222.333-76', 'Mario Brother', 'M', 38,'(83)92222-3353'),
('222.222.333-76', 'Elba Ramalho', 'F', 77,'(83)94354-6756'),
('444.222.333-76', 'Maria do Carmo', 'F', 55,'(83)99999-1234'),
('999.222.333-76', 'Max Candido', 'M', 33,'(83)99559-3333');

INSERT INTO remedio
(nome, id, validade, quantidade)
VALUE
('Buscopan', 23432, '2024-11-07', 315),
('Dipirona', 5426, '2025-08-09', 298),
('Amoxilina', 324, '2023-12-28', 56),
('Paracetamol', 12344, '2025-11-07', 70);


-- 4) Questão. Apagando uma coluna da tabela
ALTER TABLE medico DROP COLUMN telefone;
ALTER TABLE paciente DROP COLUMN telefone;
ALTER TABLE remedio DROP COLUMN quantidade;


-- 5)Questão. Exibindo as tabelas.
SELECT * FROM medico;
SELECT * FROM paciente;
SELECT * FROM remedio;


-- 6)Questão. 

SELECT crm, sexo, idade  FROM medico;
SELECT cpf, nome FROM paciente WHERE idade>41;
SELECT nome, id FROM remedio WHERE id<7000;


-- 7)
