-- Crear la base de datos
CREATE DATABASE SistemaEscolar;
USE SistemaEscolar;

-- Tabla Departamento
CREATE TABLE Departamento (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    fecha_creacion DATE DEFAULT CURRENT_DATE
);

-- Tabla Profesores
CREATE TABLE Profesores (
    id_profesor INT PRIMARY KEY AUTO_INCREMENT,
    id_departamento INT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    genero CHAR(1),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    fecha_contratacion DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_departamento) REFERENCES Departamento(id_departamento)
);

-- Tabla Curso
CREATE TABLE Curso (
    id_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_profesor INT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    creditos TINYINT NOT NULL DEFAULT 1,
    nivel VARCHAR(20),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);

-- Tabla Direcciones
CREATE TABLE Direcciones (
    id_direccion INT PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(100) NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    estado VARCHAR(50),
    codigo_postal VARCHAR(10),
    pais VARCHAR(50) DEFAULT 'México'
);

-- Tabla Estudiantes
CREATE TABLE Estudiantes (
    id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    id_direccion INT,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE,
    genero CHAR(1),
    email VARCHAR(100) UNIQUE,
    telefono VARCHAR(15),
    fecha_inscripcion DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_direccion) REFERENCES Direcciones(id_direccion)
);

-- Tabla Matriculas
CREATE TABLE Matriculas (
    id_matricula INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    fecha_matricula DATE DEFAULT CURRENT_DATE,
    calificacion DECIMAL(3,1),
    estado VARCHAR(20) DEFAULT 'Activo',
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_curso) REFERENCES Curso(id_curso),
    UNIQUE (id_estudiante, id_curso)
);