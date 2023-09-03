CREATE DATABASE Mercadinho_Jampa;
use Mercadinho_Jampa;

-- 1) Criando as tabelas.

CREATE TABLE Produto(
	Id_prod INT PRIMARY KEY,
    Nome_Produto VARCHAR(50),
    Valor FLOAT 
);

CREATE TABLE Cliente(
	CPF VARCHAR(14) PRIMARY KEY,
    Nome_Cliente VARCHAR(50),
    Sexo CHAR 
);

CREATE TABLE Funcionario(
	CPF_Fun VARCHAR(14) PRIMARY KEY,
    Nome_Fun VARCHAR(50),
    Sexo CHAR
);

-- 2) Adicionando colunas nas tabelas.

ALTER TABLE Cliente ADD COLUMN Telefone VARCHAR(14);
ALTER TABLE Funcionario ADD COLUMN Telefone VARCHAR(14);
ALTER TABLE Funcionario ADD COLUMN Idade INT;
ALTER TABLE Produto ADD COLUMN Validade DATE;

-- 3) Inserindo dados nas tabelas

INSERT INTO Produto
(Id_prod, Nome_Produto, Valor, Validade)
VALUES
(2324234, 'Cuscuz', 2.99, '2024-11-15'),
(3242343, 'Arroz', 3.15, '2023-09-28'),
(5453464, 'Feijão', 7.94, '2023-11-07'),
(2343534, 'Macarrão', 3.59, '2024-08-12'),
(8678678, 'Tomate', 5.99, '2023-09-17');

INSERT INTO Funcionario
(CPF_Fun, Nome_Fun, Sexo, Telefone, Idade)
VALUES
('343.234.656-23', 'Max Candido', 'M','934235-4535', 33),
('234.234.656-23', 'Maria da Conceição', 'F','87856-3454', 54),
('143.234.656-23', 'Matheus Henrique', 'M','86343-7657', 29),
('098.234.656-23', 'Felipe Duarte', 'M','97675-1234', 28),
('057.234.656-23', 'Bianca Medeiros', 'F','92222-9780', 26);

INSERT INTO Cliente
(CPF, Nome_Cliente, Sexo, Telefone)
VALUES
('668.234.656-54', 'Maria do Carmo', 'F','96756-6564'),
('987.234.656-12', 'Fernando Henrique', 'M','94534-4324'),
('098.234.656-76', 'Elena Medeiros', 'F','87534-9776'),
('454.234.656-99', 'Max de França', 'M','94434-1231'),
('878.234.656-00', 'Gustavo Estenio', 'M','95344-0997');

-- 4) Exibindo conteúdo das tabelas

SELECT * FROM Cliente;
SELECT * FROM Funcionario;
SELECT * FROM PRODUTO;
