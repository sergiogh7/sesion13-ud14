DROP DATABASE IF EXISTS ejercicio5;
CREATE DATABASE IF NOT EXISTS ejercicio5 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio5;

DROP TABLE IF EXISTS almacenes;
CREATE TABLE IF NOT EXISTS almacenes (
	codigo int AUTO_INCREMENT,
    lugar varchar(100),
    capacidad int,
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS articulos;
CREATE TABLE IF NOT EXISTS articulos (
	numReferencia char(5),
    contenido varchar(100),
    valor int,
    almacen int,
    PRIMARY KEY(numReferencia),
    FOREIGN KEY(almacen) REFERENCES almacenes(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);