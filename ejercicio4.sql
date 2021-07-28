DROP DATABASE IF EXISTS ejercicio4;
CREATE DATABASE IF NOT EXISTS ejercicio4 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio4;

DROP TABLE IF EXISTS departamentos;
CREATE TABLE IF NOT EXISTS departamentos (
	codigo int,
    nombre varchar(100),
    presupuesto int,
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS empleados;
CREATE TABLE IF NOT EXISTS empleados (
	dni varchar(8),
    nombre varchar(100),
    apellidos varchar(255),
    departamento int,
    PRIMARY KEY(dni),
    FOREIGN KEY(departamento) REFERENCES departamentos(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);