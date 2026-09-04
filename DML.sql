INSERT INTO estudiantes(nombre)
VALUES
('Juan Pérez'),
('Maria Gómez'),
('Luis Ramírez'),
('Ana Morales'),
('Laura Rodríguez'),
('Daniel Hernández'),
('Carolina Sánchez'),
('Mario López');

INSERT INTO docentes(nombre)
VALUES
('Carlos Gómez'),
('Maria Martínez'),
('José Rodríguez'),
('Carlos Gómez');

INSERT INTO cursos(nombre, aula)
VALUES
('Algoritmos', 'Aula 101'),
('Redes', 'Aula 102'),
('Bases de Datos', 'Aula 103');


INSERT INTO horarios(dia, hora_inicio, hora_fin)
VALUES
('jueves', '10:00:00', '12:00:00'),
('martes', '14:00:00', '16:00:00'),
('jueves', '08:00:00', '10:00:00');

INSERT INTO asignaciones(
    cursos_id_curso,
    horarios_id_horario,
    estudiantes_id_estudiante,
    docentes_id_docente
)
VALUES
(1, 1, 1, 1),
(1, 1, 2, 1),
(2, 2, 3, 2),
(2, 2, 4, 2),
(3, 3, 5, 3),
(1, 1, 6, 4),
(2, 2, 7, 2),
(3, 3, 8, 3);