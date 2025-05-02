-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS GestionAcademica;
USE GestionAcademica;

-- Crear la tabla Departamento
CREATE TABLE Departamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla Estudiante
CREATE TABLE Estudiante (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    correo VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);

-- Crear la tabla Profesor
CREATE TABLE Profesor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES Departamento(id)
);

-- Crear la tabla Curso
CREATE TABLE Curso (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    creditos INT,
    profesor_id INT,
    FOREIGN KEY (profesor_id) REFERENCES Profesor(id)
);

-- Crear la tabla Clase
CREATE TABLE Clase (
    id INT AUTO_INCREMENT PRIMARY KEY,
    curso_id INT,
    aula VARCHAR(50),
    horario VARCHAR(100),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

-- Crear la tabla Inscripcion
CREATE TABLE Inscripcion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    curso_id INT,
    fecha DATE,
    FOREIGN KEY (estudiante_id) REFERENCES Estudiante(id),
    FOREIGN KEY (curso_id) REFERENCES Curso(id)
);

-- Crear la tabla Calificacion
CREATE TABLE Calificacion (
    id INT AUTO_INCREMENT PRIMARY KEY,
    inscripcion_id INT,
    clase_id INT,
    nota DECIMAL(4,2),
    FOREIGN KEY (inscripcion_id) REFERENCES Inscripcion(id),
    FOREIGN KEY (clase_id) REFERENCES Clase(id)
);
