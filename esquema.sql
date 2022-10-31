--Creación de la base de datos y del usuario:

CREATE DATABASE libreria;

CREATE USER 'paco'@'%' IDENTIFIED BY 'asdasd';
GRANT ALL PRIVILEGES ON libreria.* to 'paco'@'%';
flush privileges;
USE libreria;



-- Creacción de las tablas:

CREATE TABLE AUTOR ( 
Nombre_autor VARCHAR(40),
FechaNac DATE NOT NULL,
Nacionalidad VARCHAR(15),
CONSTRAINT pk_autor PRIMARY KEY (Nombre_autor)
);

CREATE TABLE LIBROS (
ISBN VARCHAR(17),
Titulo VARCHAR(30) NOT NULL,
Genero VARCHAR(10),
AnioPublicacion INT(4),
Editorial VARCHAR(10),
Autor VARCHAR(40),
CONSTRAINT pk_libros PRIMARY KEY (ISBN),
CONSTRAINT fk_socios FOREIGN KEY (Autor) REFERENCES AUTOR(Nombre_autor)
);

-- Insercción de registros:

-- Tabla Autores

INSERT INTO AUTOR VALUES ('Carlos Santos', '1940/04/02', 'Española');
INSERT INTO AUTOR VALUES ('Juan Perino', '1950/12/05', 'Italiana');
INSERT INTO AUTOR VALUES ('Antonio Luengo', '1968/07/09', 'Francesa');
INSERT INTO AUTOR VALUES ('Joseph Lopez', '1971/05/18', 'Americana');

-- Tabla Libros

INSERT INTO LIBROS VALUES ('978-84-37604-94-7', 'El Quijote de la Mancha', 'Novela', '1937', 'Juventud', 'Carlos Santos');
INSERT INTO LIBROS VALUES ('978-92-57508-94-8', 'La Odisea', 'Novela', '1923', 'Combel', 'Juan Perino');
INSERT INTO LIBROS VALUES ('978-99-38201-94-0', 'El Señor de los Anillos', 'Novela', '1996', 'Tirant', 'Antonio Luengo');
INSERT INTO LIBROS VALUES ('978-95-77894-94-1', 'La Comedia de las Almas', 'Novela', '1956', 'Nordical', 'Joseph Lopez');