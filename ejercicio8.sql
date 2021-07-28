DROP DATABASE IF EXISTS ejercicio8;
CREATE DATABASE IF NOT EXISTS ejercicio8 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio8;

DROP TABLE IF EXISTS piezas;
CREATE TABLE IF NOT EXISTS piezas (
	codigo int AUTO_INCREMENT,
    nombre nvarchar(100),
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS proveedores;
CREATE TABLE IF NOT EXISTS proveedores (
	id char(4),
    nombre nvarchar(100),
    PRIMARY KEY(id)
);

DROP TABLE IF EXISTS suministra;
CREATE TABLE IF NOT EXISTS suministra (
	codigoPeiza int,
	idProveedor char(4),
    precio int,
    PRIMARY KEY(codigoPeiza, idProveedor),
    FOREIGN KEY(codigoPeiza) REFERENCES piezas(codigo),
    FOREIGN KEY(idProveedor) REFERENCES proveedores(id)
);