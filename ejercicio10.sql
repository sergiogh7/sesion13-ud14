DROP DATABASE IF EXISTS ejercicio10;
CREATE DATABASE IF NOT EXISTS ejercicio10 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio10;

DROP TABLE IF EXISTS cajeros;
CREATE TABLE IF NOT EXISTS cajeros (
	codigo int AUTO_INCREMENT,
	nomApels nvarchar(255),
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS productos;
CREATE TABLE IF NOT EXISTS productos (
	codigo int AUTO_INCREMENT,
    nombre nvarchar(100),
    precio int,
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS maquinas_registradoras;
CREATE TABLE IF NOT EXISTS maquinas_registradoras (
	codigo int AUTO_INCREMENT,
    piso int,
	PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS venta;
CREATE TABLE IF NOT EXISTS venta (
	cajero int,
    maquina int,
    producto int,
	PRIMARY KEY(cajero, maquina, producto),
    FOREIGN KEY(cajero) REFERENCES cajeros(codigo),
    FOREIGN KEY(maquina) REFERENCES maquinas_registradoras(codigo),
    FOREIGN KEY(producto) REFERENCES productos(codigo)
);