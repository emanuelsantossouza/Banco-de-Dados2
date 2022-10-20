-- DDL - Linguagem de Definição de Dados - Data Definition Language
-- Criar um banco

CREATE DATABASE IF NOT EXISTS PatoRestaurantDB;
USE PatoRestaurantDB;

CREATE TABLE IF NOT EXISTS Category 
( 
	Id 		TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NAME	VARCHAR(30) NOT NULL UNIQUE,	 
    Image	VARCHAR(200),
    Banner	VARCHAR(200),
    HomeOrder	TINYINT UNSIGNED
);

CREATE TABLE IF NOT EXISTS
(	

);


CREATE TABLE IF NOT EXISTS 
(

);