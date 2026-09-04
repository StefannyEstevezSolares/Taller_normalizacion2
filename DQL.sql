--1. Ver estudiantes y sus cursos

SELECT e.nombre, c.nombre AS curso
FROM asignaciones a
JOIN estudiantes e ON a.estudiantes_id_estudiante = e.id_estudiante
JOIN cursos c ON a.cursos_id_curso = c.id_curso;

--Porque los nombres de estudiantes y cursos están separados y se unen mediante sus IDs.


--2. Ver docentes y cursos

SELECT d.nombre, c.nombre AS curso
FROM asignaciones a
JOIN docentes d ON a.docentes_id_docente = d.id_docente
JOIN cursos c ON a.cursos_id_curso = c.id_curso;

--Evita repetir el nombre del docente y del curso en cada asignación.

--3. Ver estudiantes y horarios

SELECT e.nombre, h.dia
FROM asignaciones a
JOIN estudiantes e ON a.estudiantes_id_estudiante = e.id_estudiante
JOIN horarios h ON a.horarios_id_horario = h.id_horario;

--El horario se guarda en una tabla independiente y se relaciona mediante una clave foránea.

--4. Buscar estudiantes de Redes
SELECT e.nombre
FROM asignaciones a
JOIN estudiantes e ON a.estudiantes_id_estudiante = e.id_estudiante
JOIN cursos c ON a.cursos_id_curso = c.id_curso
WHERE c.nombre = 'Redes';

--5. Ver curso, aula, docente y horario

SELECT c.nombre AS curso, 
       c.aula, 
       d.nombre AS docente, 
       h.dia
FROM asignaciones a
JOIN cursos c ON a.cursos_id_curso = c.id_curso
JOIN docentes d ON a.docentes_id_docente = d.id_docente
JOIN horarios h ON a.horarios_id_horario = h.id_horario;

--Porque la información del curso, docente y 
--horario está almacenada en tablas separadas. 
--Mediante las claves foráneas y los JOIN,
--podemos reunir toda la información sin duplicarla 
--en una sola tabla.