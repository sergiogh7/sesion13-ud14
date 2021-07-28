DROP DATABASE IF EXISTS ejercicio6;
CREATE DATABASE IF NOT EXISTS ejercicio6 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio6;

DROP TABLE IF EXISTS peliculas;
CREATE TABLE IF NOT EXISTS peliculas (
	codigo int AUTO_INCREMENT,
    nombre varchar(100),
    calificacionEdad int,
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS salas;
CREATE TABLE IF NOT EXISTS salas (
	codigo int AUTO_INCREMENT,
    nombre varchar(100),
    pelicula int,
    PRIMARY KEY(codigo),
    FOREIGN KEY(pelicula) REFERENCES peliculas(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);