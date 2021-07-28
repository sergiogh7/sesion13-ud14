DROP DATABASE IF EXISTS ejercicio11;
CREATE DATABASE IF NOT EXISTS ejercicio11 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio11;

DROP TABLE IF EXISTS facultad;
CREATE TABLE IF NOT EXISTS facultad (
	codigo int,
	nombre nvarchar(100),
    PRIMARY KEY(codigo)
);

DROP TABLE IF EXISTS investigadores;
CREATE TABLE IF NOT EXISTS investigadores (
    dni nvarchar(8),
    nomApels nvarchar(255),
    facultad int,
    PRIMARY KEY(dni),
    FOREIGN KEY(facultad) REFERENCES facultad(codigo)
);

DROP TABLE IF EXISTS equipos;
CREATE TABLE IF NOT EXISTS equipos (
	numSerie char(4),
    nombre nvarchar(100),
	facultad int,
	PRIMARY KEY(numSerie),
    FOREIGN KEY(facultad) REFERENCES facultad(codigo)
);

DROP TABLE IF EXISTS reserva;
CREATE TABLE IF NOT EXISTS reserva (
	dni nvarchar(8),
    numBasic char(4),
    comienzo datetime,
    fin datetime,
	PRIMARY KEY(dni, numBasic),
    FOREIGN KEY(dni) REFERENCES investigadores(dni),
    FOREIGN KEY(numBasic) REFERENCES equipos(numSerie)
);