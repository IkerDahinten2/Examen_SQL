CREATE DATABASE IF NOT EXISTS biblioteca_campus;
USE biblioteca_campus;

CREATE TABLE libro (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    isbn VARCHAR(13) UNIQUE NOT NULL,
    disponibilidad BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE autor (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    apellido VARCHAR(150) NOT NULL
);

CREATE TABLE libro_autor (
    id_libro INT,
    id_autor INT,
    PRIMARY KEY (id_libro, id_autor),
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro) ON DELETE CASCADE,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor) ON DELETE CASCADE
);

CREATE TABLE editorial (
    id_editorial INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL
);

CREATE TABLE edicion (
    id_edicion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    id_editorial INT,
    numero_edicion INT NOT NULL,
    fecha_publicacion DATE NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro) ON DELETE CASCADE,
    FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial) ON DELETE CASCADE
);

CREATE TABLE miembro (
    id_miembro INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    apellido VARCHAR(150) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    fecha_registro DATE NOT NULL
);

CREATE TABLE transaccion (
    id_transaccion INT AUTO_INCREMENT PRIMARY KEY,
    id_libro INT,
    id_miembro INT,
    tipo ENUM('prestamo', 'devolucion') NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_libro) REFERENCES libro(id_libro) ON DELETE RESTRICT,
    FOREIGN KEY (id_miembro) REFERENCES miembro(id_miembro) ON DELETE RESTRICT
);