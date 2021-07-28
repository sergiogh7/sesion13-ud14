DROP DATABASE IF EXISTS ejercicio7;
CREATE DATABASE IF NOT EXISTS ejercicio7 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio7;

DROP TABLE IF EXISTS despachos;
CREATE TABLE IF NOT EXISTS despachos (
	numero int,
    capacidad int,
    PRIMARY KEY(numero)
);

DROP TABLE IF EXISTS directores;
CREATE TABLE IF NOT EXISTS directores (
	dni varchar(8),
    nomApels nvarchar(255),
    dniJefe varchar(8),
    despacho int,
    PRIMARY KEY(dni),
    FOREIGN KEY(dniJefe) REFERENCES directores(dni),
    FOREIGN KEY(despacho) REFERENCES despachos(numero)
);