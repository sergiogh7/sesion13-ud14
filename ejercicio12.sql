DROP DATABASE IF EXISTS ejercicio12;
CREATE DATABASE IF NOT EXISTS ejercicio12 CHARACTER SET= utf8mb4 COLLATE= utf8mb4_unicode_ci;
USE ejercicio12;

DROP TABLE IF EXISTS profesores;
CREATE TABLE IF NOT EXISTS profesores (
	dni varchar(9),
	nombre varchar(100),
    apellido1 varchar(100),
    apellido2 varchar(100),
    direccion varchar(100),
    titulacion varchar(100),
	gana double NOT NULL,
    PRIMARY KEY(dni)
);

DROP TABLE IF EXISTS cursos;
CREATE TABLE IF NOT EXISTS cursos (
	codigoCurso int,
	nombre varchar(100) UNIQUE,
    numMaxAlumnosRec int,
    profesor varchar(9),
    fechaInicio datetime,
    fechaFin datetime,
    numHorasCurso int NOT NULL,
    PRIMARY KEY(codigoCurso),
    FOREIGN KEY(profesor) REFERENCES profesores(dni),
    CHECK(fechaInicio < fechaFin)
);

DROP TABLE IF EXISTS alumnos;
CREATE TABLE IF NOT EXISTS alumnos (
	codigoAlumno int NOT NULL,
	nombre varchar(100),
    apellido1 varchar(100),
    apellido2 varchar(100),
    dni varchar(9),
    direccion varchar(100),
    sexo char(1),
    fechaNacimiento datetime,
    curso int,
    PRIMARY KEY(codigoAlumno),
    FOREIGN KEY(curso) REFERENCES cursos(codigoCurso),
    CHECK('H' || 'M')
);