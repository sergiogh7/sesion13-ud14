DROP DATABASE IF EXISTS ejercicio9;
CREATE DATABASE IF NOT EXISTS ejercicio9 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio9;

DROP TABLE IF EXISTS cientificos;
CREATE TABLE IF NOT EXISTS cientificos (
    dni varchar(100),
	nomApels nvarchar(255),
    PRIMARY KEY(dni)
);

DROP TABLE IF EXISTS proyecto;
CREATE TABLE IF NOT EXISTS proyecto (
	id char(4),
    nombre nvarchar(255),
    horas int,
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS asignado_a;
CREATE TABLE IF NOT EXISTS asignado_a (
	cientifico varchar(8),
	proyecto char(4),
    PRIMARY KEY(cientifico, proyecto),
    FOREIGN KEY(cientifico) REFERENCES cientificos(dni),
    FOREIGN KEY(proyecto) REFERENCES proyecto(id)
);