DROP DATABASE IF EXISTS ejercicio3;
CREATE DATABASE IF NOT EXISTS ejercicio3 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio3;

DROP TABLE IF EXISTS fabricantes;
CREATE TABLE IF NOT EXISTS fabricantes (
	codigo int AUTO_INCREMENT,
    nombre varchar(100),
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS articulos;
CREATE TABLE IF NOT EXISTS articulos (
	codigo int AUTO_INCREMENT,
    nombre varchar(100),
    precio int,
    fabricante int,
    PRIMARY KEY(codigo),
    FOREIGN KEY(fabricante) REFERENCES fabricantes(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);