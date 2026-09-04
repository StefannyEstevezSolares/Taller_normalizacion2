DROP DATABASE IF EXISTS sistema_asignaciones;

CREATE DATABASE sistema_asignaciones;

USE sistema_asignaciones;


CREATE TABLE estudiantes(

    id_estudiante INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL

);


CREATE TABLE docentes(

    id_docente INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL

);


CREATE TABLE cursos(

    id_curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nombre VARCHAR(45) NOT NULL,
    aula VARCHAR(45) NOT NULL

);


CREATE TABLE horarios(

    id_horario INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    dia VARCHAR(45) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL

);


CREATE TABLE asignaciones(

    id_asignacion INT AUTO_INCREMENT NOT NULL PRIMARY KEY,

    cursos_id_curso INT NOT NULL,
    horarios_id_horario INT NOT NULL,
    estudiantes_id_estudiante INT NOT NULL,
    docentes_id_docente INT NOT NULL,

    FOREIGN KEY(cursos_id_curso)
        REFERENCES cursos(id_curso),

    FOREIGN KEY(horarios_id_horario)
        REFERENCES horarios(id_horario),

    FOREIGN KEY(estudiantes_id_estudiante)
        REFERENCES estudiantes(id_estudiante),

    FOREIGN KEY(docentes_id_docente)
        REFERENCES docentes(id_docente)

);