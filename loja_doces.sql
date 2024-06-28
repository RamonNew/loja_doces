CREATE DATABASE loja_doces;

USE loja_doces;

CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(30) NOT NULL
);

INSERT INTO categorias (nome_categoria) VALUES 
("Bolos"), ("Tortas"), ("Doces Finos"),("Doces Tradicionais");

SELECT * FROM categorias;

CREATE TABLE doces (
	id_doce INT PRIMARY KEY AUTO_INCREMENT,
    nome_doce VARCHAR(30) NOT NULL,
    id_categoria INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

INSERT INTO doces (id_categoria,nome_doce) VALUES 
(1,"Red Velvet"),
(1,"Bolo de Laranja"),
(2,"Torta de Frango");

SELECT * FROM doces;