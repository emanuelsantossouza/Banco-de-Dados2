-- Criar um banco de Dados
CREATE DATABASE IF NOT EXISTS GalloShop;

-- Exibe os bancos do servidor
-- SHOW DATABASES

-- Colocar o Banco em Uso
USE GalloShop;





-- Criando tabela Categoria 
CREATE TABLE Category (
	Id		SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
    Name	VARCHAR(30) NOT NULL,
    PRIMARY KEY(Id)
);

-- Criando a tabela de Marca
CREATE TABLE Brand (
	Id			SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
    Name		VARCHAR(30) NOT NULL,
    PRIMARY KEY(Id)
);

-- Criando a table de Produto
CREATE TABLE Product (
	Id			SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT, 
    Name		VARCHAR(70) NOT NULL,
    Description VARCHAR(8000),
    Storage		INT UNSIGNED NOT NULL DEFAULT 0,
    StorageMin  INT UNSIGNED NOT NULL DEFAULT 0,
    Cost		DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0,
    Price		DECIMAL(10,2) UNSIGNED NOT NULL DEFAULT 0,
    CreatedDate DATETIME,
    CategoryId 	SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (Id)	
);

-- Aleter a Tabela Produto Adicionar a coluna BrandId
ALTER TABLE Product ADD BrandId SMALLINT UNSIGNED NOT NULL;

-- Alterar a Tabela Produto Adicionando as chaves estrangeiras
ALTER TABLE Product ADD CONSTRAINT FK_Product_Category
FOREIGN KEY (CategoryId) REFERENCES Category(Id);

ALTER TABLE Product ADD CONSTRAINT FK_Product_Brand
FOREIGN KEY (BrandId) REFERENCES Brand(Id)

-- Excluir Banco de Dados
-- DROP DATABASE IF EXISTS GalloShop;