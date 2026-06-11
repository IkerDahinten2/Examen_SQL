USE biblioteca_campus;

INSERT INTO libro (titulo, genero, isbn, disponibilidad) VALUES
('Cien Anos de Soledad', 'Realismo Magico', '9780307474728', 1),
('Don Quijote de la Mancha', 'Novela', '9788424937478', 1),
('1984', 'Distopia', '9780451524935', 0),
('El Codigo Da Vinci', 'Suspenso', '9780307474278', 1),
('Breves Respuestas a las Grandes Preguntas', 'Ciencia', '9788417541330', 1);

INSERT INTO autor (nombre, apellido) VALUES
('Gabriel', 'Garcia Marquez'),
('Miguel', 'de Cervantes'),
('George', 'Orwell'),
('Dan', 'Brown'),
('Stephen', 'Hawking');

INSERT INTO libro_autor (id_libro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO editorial (nombre) VALUES
('Editorial Sudamericana'),
('Francisco de Robles'),
('Secker & Warburg'),
('Doubleday'),
('John Murray');

INSERT INTO edicion (id_libro, id_editorial, numero_edicion, fecha_publicacion) VALUES
(1, 1, 1, '1967-05-30'),
(1, 1, 2, '1972-08-15'),
(2, 2, 1, '1605-01-16'),
(3, 3, 1, '1949-06-08'),
(4, 4, 1, '2003-04-03'),
(5, 5, 1, '2018-10-16');

INSERT INTO miembro (nombre, apellido, email, fecha_registro) VALUES
('Carlos', 'Mendoza', 'carlos.mendoza@email.com', '2025-01-15'),
('Ana', 'Rodriguez', 'ana.rodriguez@email.com', '2025-03-22'),
('Luis', 'Martinez', 'luis.martinez@email.com', '2025-05-10');

INSERT INTO transaccion (id_libro, id_miembro, tipo, fecha) VALUES
(3, 1, 'prestamo', '2026-06-01'),
(1, 2, 'prestamo', '2026-06-02'),
(1, 2, 'devolucion', '2026-06-08'),
(4, 3, 'prestamo', '2026-06-05'),
(4, 3, 'devolucion', '2026-06-09');